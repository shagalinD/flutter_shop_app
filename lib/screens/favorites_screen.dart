import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Product> favourites;
  final Function(Product) onToggleFavourite;
  final Function(Product) onToggleCart;

  const FavouritesScreen({
    super.key,
    required this.favourites,
    required this.onToggleFavourite,
    required this.onToggleCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(
            padding: EdgeInsets.only(top: 32, left: 4, bottom: 10),
            child: Text(
              'Favourites',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                letterSpacing: -0.28,
                color: Color(0xFF202020),
              ),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: favourites.isEmpty
                ? const Center(
                    child: Text(
                      'No favourites yet',
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  )
                : GridView.builder(
                    itemCount: favourites.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.68, 
                    ),
                    itemBuilder: (context, index) {
                      final product = favourites[index];
                      return ProductCard(
                        product: product,
                        onToggleFavourite: () =>
                            onToggleFavourite(product),
                        onToggleCart: () => onToggleCart(product),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
