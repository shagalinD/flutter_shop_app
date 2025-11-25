import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  final List<Product> products;
  final Function(Product) onToggleFavourite;
  final Function(Product) onToggleCart;

  const HomeScreen({
    super.key,
    required this.products,
    required this.onToggleFavourite,
    required this.onToggleCart,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 46),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Shop',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  letterSpacing: -0.28,
                  color: Color(0xFF202020),
                ),
              ),
              SizedBox(
                width: 280,
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontFamily: 'Nunito Sans',
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFE5EBFC),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: widget.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (context, index) {
                final product = widget.products[index];
                return ProductCard(
                  product: product,
                  onToggleFavourite: () => widget.onToggleFavourite(product),
                  onToggleCart: () => widget.onToggleCart(product),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
