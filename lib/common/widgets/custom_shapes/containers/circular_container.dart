import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height,
    this.width,
    this.radius = Sizes.cardRadiusLg,
    this.padding,
    this.backgroundColor = EColors.white,
    this.child,
    this.margin,
    this.showBorder = false,
    this.borderColor = EColors.primary,
  });

  final double? height;
  final double? width;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;
  final Color borderColor;
  final Widget? child;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
