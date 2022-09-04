import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'or',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            )),
        Expanded(
            child: Divider(
          thickness: 1,
          color: Colors.white.withOpacity(0.2),
        ))
      ],
    );
  }
}
