import 'package:flutter/material.dart';

class SelectedWordWidget extends StatelessWidget {
  final String text;
  const SelectedWordWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      alignment: Alignment.center,
      height: 36.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Color(0xFFFF6978)),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
      ),
    );
  }
}
