import 'package:flutter/material.dart';
import '../models/product.dart';
import 'home_screen.dart';
import 'favorites_screen.dart';
import 'cart_screen.dart';

class ShopMainScreen extends StatefulWidget {
  const ShopMainScreen({super.key});

  @override
  State<ShopMainScreen> createState() => _ShopMainScreenState();
}

class _ShopMainScreenState extends State<ShopMainScreen> {
  int _currentIndex = 0;
  late List<Product> products;

  @override
  void initState() {
    super.initState();
    products = List.generate(
      6,
      (index) => Product(
        id: index,
        title: 'Lorem ipsum dolor sit amet consectetur',
        image: 'assets/images/product_${index + 1}.png',
        price: 17.00,
      ),
    );
  }

  void toggleFavourite(Product product) {
    setState(() {
      product.isFavourite = !product.isFavourite;
    });
  }

  void toggleCart(Product product) {
    setState(() {
      product.inCart = !product.inCart;
    });
  }

  @override
  Widget build(BuildContext context) {
    final favourites =
        products.where((product) => product.isFavourite).toList();
    final cartItems = products.where((product) => product.inCart).toList();

    final screens = [
      HomeScreen(
        products: products,
        onToggleFavourite: toggleFavourite,
        onToggleCart: toggleCart,
      ),
      FavouritesScreen(
        favourites: favourites,
        onToggleFavourite: toggleFavourite,
        onToggleCart: toggleCart,
      ),
      CartScreen(cartItems: cartItems),
    ];

    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.white,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black, 
        unselectedItemColor: const Color(0xFF004CFF), 
        iconSize: 32, 
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/heart.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/bag.png')),
            label: '',
          ),
        ],
      ),
    );
  }
}
