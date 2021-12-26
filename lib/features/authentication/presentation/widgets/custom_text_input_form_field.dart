import 'package:flutter/material.dart';

class CustomTextInputFormField extends StatelessWidget {
  final String? text;
  final VoidCallback? onCompleted;

  final double? height;
  final double? width;

  const CustomTextInputFormField({
    Key? key,
    this.text,
    this.onCompleted,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onEditingComplete: () {},
      decoration: InputDecoration(
        constraints: BoxConstraints(
            maxHeight: height ?? double.infinity,
            maxWidth: width ?? double.infinity),
        hintText: text,
        hintStyle: const TextStyle(color: Colors.white60),
        // fillColor: Colors.transparent,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white24,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white24,
          ),
        ),
      ),
    );
  }
}
