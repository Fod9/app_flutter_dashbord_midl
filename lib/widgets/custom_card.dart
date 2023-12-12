import 'package:flutter/material.dart';
import '../const.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? customBorderRadius;
  final Color? shadowColor;


  const CustomCard({Key? key, this.color, this.padding, required this.child, this.customBorderRadius, this.shadowColor, });
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(customBorderRadius ?? 8),
          ),
          color: color ?? cardBackgroundColor,
          boxShadow: shadowColor != null ? [
            BoxShadow(
              color: shadowColor!,
              spreadRadius: -2,
              blurRadius: 10,
              offset: const Offset(4, 4), // changes position of shadow
            ),
          ]: null,
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(12.0),
          child: child,
        ));
  }
}
