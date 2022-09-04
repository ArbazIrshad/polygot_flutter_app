import 'package:flutter/material.dart';

class PrioritySelectionWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const PrioritySelectionWidget({
    Key? key,
    this.isSelected = false,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: 344,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white30),
            color: Colors.white12,
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Container(
              height: 12.0,
              width: 12.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Color(0xFFA5A6F6) : null,
                border: Border.all(color: Colors.white38),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
