import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../../shared/colors.dart';

class ModeSelectionTileWidget extends StatelessWidget {
  final String imageAssetPath;
  final String text;
  final double width;
  final double height;
  final bool isSelected;
  final VoidCallback onTap;
  const ModeSelectionTileWidget({
    Key? key,
    required this.imageAssetPath,
    required this.text,
    this.width = 160,
    this.height = 196,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      onTap: onTap,
      radius: Radius.circular(12.0),
      gradient: isSelected
          ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                  lightPink.withOpacity(0.0),
                  lightPink,
                ])
          : LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0.05)
                ]),
      strokeWidth: isSelected ? 1.5 : 1.0,
      padding: EdgeInsets.zero,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white10,
                Colors.white12,
              ],
            ),
            borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(imageAssetPath),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
