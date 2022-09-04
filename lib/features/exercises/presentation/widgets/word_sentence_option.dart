import 'package:flutter/material.dart';

class WrongSentenceOption extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const WrongSentenceOption({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 358,
        height: 76,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? Color(0xFFFFB800) : Colors.white24),
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.05),
              Color(0xFFC4C4C4).withOpacity(0.02)
            ],
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.white24)),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 16.0,
                  width: 16.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? null : Color(0xFF8F9BB3),
                    gradient: isSelected
                        ? LinearGradient(colors: [
                            Color(0xFFFFAF75),
                            Color(0xFFFBEBA0),
                          ])
                        : null,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
