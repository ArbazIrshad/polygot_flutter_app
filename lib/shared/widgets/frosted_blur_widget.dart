import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBlur extends StatelessWidget {
  final Widget child;
  final double sigmaX;
  final double sigmaY;
  final BorderRadius? borderRadius;
  const FrostedBlur(
      {Key? key,
      required this.child,
      this.sigmaX = 20,
      this.sigmaY = 20,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX,
          sigmaY: sigmaY,
        ),
        child: child,
      ),
    );
  }
}
