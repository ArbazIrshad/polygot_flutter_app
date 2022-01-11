import 'package:flutter/material.dart';

class WordLengthSelectionWidget extends StatelessWidget {
  final String wordLength;
  final String wordCount;
  final Color wordCountColor;
  final isPremium;
  const WordLengthSelectionWidget({
    Key? key,
    required this.wordLength,
    required this.wordCount,
    this.wordCountColor = Colors.white,
    this.isPremium = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.white24),
              color: Colors.white10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                wordLength,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                wordCount,
                style: TextStyle(
                    color: wordCountColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
              Text(
                'words',
                style: TextStyle(
                    color: Colors.white30,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        if (isPremium)
          Text(
            'Premium',
            style: TextStyle(
                color: Color(0xFFEABE4E),
                fontWeight: FontWeight.w600,
                fontSize: 13),
          ),
      ],
    );
  }
}
