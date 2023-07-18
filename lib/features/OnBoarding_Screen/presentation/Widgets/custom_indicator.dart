// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constraints.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key? key, @required this.dotIndex}) : super(key: key);
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          activeColor: kMainColor,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: kMainColor),
              borderRadius: BorderRadius.circular(8))),
      dotsCount: 3,
      position: dotIndex!.toInt() ,
    );
  }
}
