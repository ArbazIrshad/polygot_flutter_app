import 'package:flutter/material.dart';

class LetterButton extends StatelessWidget {
  final String letter;
  const LetterButton({
    Key? key,
    required this.letter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 50.0,
      // padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white54,
          ),
          borderRadius: BorderRadius.circular(4.0)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          letter,
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
