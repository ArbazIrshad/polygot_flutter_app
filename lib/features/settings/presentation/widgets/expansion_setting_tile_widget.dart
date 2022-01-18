import 'package:flutter/material.dart';

class ExpandedSettingTileWidget extends StatelessWidget {
  final List<Widget> children;
  final VoidCallback? onTap;
  const ExpandedSettingTileWidget({
    Key? key,
    required this.children,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.white10),
          color: Colors.white.withOpacity(0.05),
        ),
        height: 38.0,
        child: Row(
          children: children,
        ),
      ),
    );
  }
}
