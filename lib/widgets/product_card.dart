import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onToggleFavourite;
  final VoidCallback onToggleCart;

  const ProductCard({
    super.key,
    required this.product,
    required this.onToggleFavourite,
    required this.onToggleCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(9),
                    topRight: Radius.circular(9),
                  ),
                  child: Image.asset(
                    product.image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 6,
                  child: GestureDetector(
                    onTap: onToggleFavourite,
                    child: Image.asset(
                      product.isFavourite
                          ? 'assets/icons/heart_red.png'
                          : 'assets/icons/heart_white.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: GestureDetector(
                    onTap: onToggleCart,
                    child: Image.asset(
                      product.inCart
                          ? 'assets/icons/bag_black.png'
                          : 'assets/icons/bag_white.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              product.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 16 / 12,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            child: Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 17,
                height: 21 / 17,
                letterSpacing: -0.17,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
