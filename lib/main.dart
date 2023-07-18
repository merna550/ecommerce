import 'package:flutter/material.dart';

import 'features/splash_screen/presentation/splash_screen.dart';

void main() {
  runApp(const Ecommerce());
} //main

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
