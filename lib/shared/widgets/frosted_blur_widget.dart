import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBlur extends StatelessWidget {
  final Widget child;
  const FrostedBlur({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: child,
      ),
    );
  }
}
