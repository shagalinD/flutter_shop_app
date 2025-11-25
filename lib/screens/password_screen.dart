import 'package:flutter/material.dart';
import 'shop_main_screen.dart';


class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned(
            top: -171.67,
            left: -158.44,
            child: Image.asset(
              'assets/images/password_background.png',
              width: 533.91,
              height: 550.34,
            ),
          ),

          Positioned(
            top: 282,
            left: 148,
            child: const Text(
              'Hello!',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                height: 36 / 28,
                letterSpacing: -0.28,
                color: Color(0xFF202020),
              ),
            ),
          ),

          Positioned(
            top: 348,
            left: 104,
            child: const Text(
              'Type your password',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w300,
                fontSize: 19,
                height: 35 / 19,
                letterSpacing: 0,
                color: Colors.black,
              ),
            ),
          ),

          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 370,
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.83,
                      color: Color(0xFFD2D2D2),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 22),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/icons/eye-splash.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 650,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 370,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const ShopMainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF004CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(335, 61),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                      color: Color(0xFFF3F3F3),
                    ),
                  ),
                ),

              ),
            ),
          ),

          Positioned(
            top: 725,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context); 
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    height: 26 / 15,
                    letterSpacing: 0,
                    color: Color(0xFF202020),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
