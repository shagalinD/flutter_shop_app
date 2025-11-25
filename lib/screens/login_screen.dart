import 'package:flutter/material.dart';
import 'password_screen.dart'; 

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              'assets/images/login_background.png',
              width: 782.04,
              height: 1113.19,
            ),
          ),

          Positioned(
            top: 438,
            left: 20,
            child: const Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                fontSize: 52,
                height: 1.0, 
                letterSpacing: -0.52,
                color: Color(0xFF202020),
              ),
            ),
          ),

          Positioned(
            top: 503,
            left: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Good to see you back!',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w300,
                    fontSize: 19,
                    height: 35 / 19,
                    letterSpacing: 0,
                    color: Color(0xFF202020),
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset(
                  'assets/icons/heart.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),

          Positioned(
            top: 550,
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
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.83,
                      color: Color(0xFFD2D2D2),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
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
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF004CFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'LogIn',
                    style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                      height: 31 / 22,
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
        )
        ],
      ),
    );
  }
}
