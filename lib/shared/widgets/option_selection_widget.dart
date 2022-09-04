import 'package:flutter/material.dart';
import '../colors.dart';

class OptionItem {
  final Widget child;
  final VoidCallback onTap;
  final bool isSelected;
  OptionItem(
      {required this.child, required this.onTap, required this.isSelected});
}

class OptionSelectionWidget extends StatelessWidget {
  final List<OptionItem> children;
  const OptionSelectionWidget({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: children.length * 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white.withOpacity(0.05)),
      child: Column(
        children: List.generate(children.length, (index) {
          if (children[index] == children.first) {
            return OptionItemWidget(
              child: children[index].child,
              onTap: children[index].onTap,
              isSelected: children[index].isSelected,
              height: 50,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12.0)),
            );
          }

          if (children[index] == children.last) {
            return OptionItemWidget(
              child: children[index].child,
              onTap: children[index].onTap,
              isSelected: children[index].isSelected,
              height: 50,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(12.0)),
            );
          }

          return OptionItemWidget(
            child: children[index].child,
            onTap: children[index].onTap,
            isSelected: children[index].isSelected,
            height: 50,
            borderRadius: BorderRadius.zero,
          );
        }),
      ),
    );
  }
}

class OptionItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final bool isSelected;
  final double height;
  final BorderRadiusGeometry borderRadius;
  const OptionItemWidget({
    Key? key,
    required this.onTap,
    required this.child,
    required this.isSelected,
    required this.height,
    required this.borderRadius,
  }) : super(key: key);

  // get leafGreen => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: borderRadius,
              // BorderRadius.vertical(top: Radius.circular(12.0)),
              border: Border.all(
                  color: isSelected ? leafGreen : Colors.white38,
                  width: isSelected ? 1.0 : 0.5)),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: child),
    );
  }
}
