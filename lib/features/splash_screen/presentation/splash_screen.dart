import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';
import '../../OnBoarding_Screen/presentation/OnBoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  void navigateToOnboarding() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        // MaterialPageRoute(builder: (context) => OnBoardingScreen()),
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              FadeTransition(
            opacity: animation,
            child: OnBoardingScreen(),
          ),
          transitionDuration: Duration(milliseconds: 50),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
              child: const Image(image: AssetImage('assets/images/8637.jpg'))),
        ));
  }
}
