import 'package:flutter/material.dart';

import 'package:ecommerce/core/utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(
    this.value,
  );
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    final double height =
        value ?? 0.0; // Provide a default value if value is null
    return SizedBox(
      height: SizeConfig.defaultSize! * height,
    );
  }
}
