import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class CustomRoundedOutlineGradientButton extends StatelessWidget {
  final String text;
  final List<Color> colors;
  const CustomRoundedOutlineGradientButton({
    Key? key,
    required this.text,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      child: SizedBox(
        width: 80,
        height: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            // Icon(Icons.opacity, color: Colors.grey, size: 24),
          ],
        ),
      ),
      gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
      ),
      strokeWidth: 2.0,
      padding: EdgeInsets.zero,
      radius: Radius.circular(40),
    );
  }
}
