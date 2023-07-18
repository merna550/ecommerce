import 'package:ecommerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            right: SizeConfig.defaultSize! * 5,
            top: SizeConfig.defaultSize! * 10,
            child: Text(
              'Skip',
              style: TextStyle(fontSize: 14, color: Color(0xff898989)),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 30,
          child: Indicator(
              dotIndex: pageController!.hasClients ? pageController?.page : 0),
        ),
        Positioned(child: CustomPageView(pageController: pageController)),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            ))
      ],
    ));
  }
}
