import 'package:flutter/material.dart';

class WrongSentenceOption extends StatelessWidget {
  final String text;
  const WrongSentenceOption({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 76,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
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
                  color: Color(0xFF8F9BB3),
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
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
