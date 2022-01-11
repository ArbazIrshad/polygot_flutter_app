import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class CustomOulineGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final List<Color> colors;
  final double height;
  final double? width;
  const CustomOulineGradientButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.colors,
    this.height = 56,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      // alignment: Alignment.center,
      child: OutlineGradientButton(
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              // textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          strokeWidth: 2.0,
          radius: Radius.circular(8.0),
          backgroundColor: Colors.white.withOpacity(0.05),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: colors)),
    );
  }
}
