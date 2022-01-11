import 'package:flutter/material.dart';

class LangaugeListTile extends StatelessWidget {
  final String flagIcon;
  final String countryName;
  final String skillLevel;

  const LangaugeListTile({
    Key? key,
    required this.flagIcon,
    required this.countryName,
    required this.skillLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: Image.asset(
            flagIcon,
            package: 'country_icons',
            height: 30,
            width: 44,
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        Text(
          countryName,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
        ),
        const Spacer(),
        Text(
          skillLevel,
          style: TextStyle(
              color: Color(0xFF42D3CA),
              fontWeight: FontWeight.w600,
              fontSize: 17),
        ),
      ],
    );
  }
}
