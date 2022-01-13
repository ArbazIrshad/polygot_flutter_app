import 'package:flutter/material.dart';

class ModeSelectionTileWidget extends StatelessWidget {
  final String imageAssetPath;
  final String text;
  final double width;
  final double height;
  const ModeSelectionTileWidget({
    Key? key,
    required this.imageAssetPath,
    required this.text,
    this.width = 160,
    this.height = 196,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
