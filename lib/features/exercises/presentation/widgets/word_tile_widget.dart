import 'package:flutter/material.dart';

class WordTileWidget extends StatelessWidget {
  final String text;
  const WordTileWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      alignment: Alignment.center,
      height: 44.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.white38),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.05),
              Color(0xFFC4C4C4).withOpacity(0.02)
            ],
          )),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
      ),
    );
  }
}
