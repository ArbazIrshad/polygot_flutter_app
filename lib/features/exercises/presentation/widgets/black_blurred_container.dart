import 'package:flutter/material.dart';
import '../../../../shared/widgets/frosted_blur_widget.dart';

class BlackBlurredContainer extends StatelessWidget {
  final Widget child;
  const BlackBlurredContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FrostedBlur(
      child: Container(
          // height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black12, Colors.black54],
            ),
          ),
          child: child),
    );
  }
}
