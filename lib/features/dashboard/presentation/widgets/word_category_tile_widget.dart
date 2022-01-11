import 'package:flutter/material.dart';

class WordCategoryTileWidget extends StatelessWidget {
  final String iconPath;
  final String text;
  final double? percentComplete;
  const WordCategoryTileWidget({
    Key? key,
    required this.iconPath,
    required this.text,
    this.percentComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 86.0,
          width: 96.0,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 4.0),
                    height: 12,
                    width: 12.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF2DD3F8), shape: BoxShape.circle),
                  )
                ],
              ),
              Image.asset(iconPath),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        if (percentComplete != null)
          Text(
            '$percentComplete%',
            style: TextStyle(
                color: Colors.white38,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          )
      ],
    );
  }
}
