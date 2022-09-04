import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final String heading;
  final String detail;
  const SectionContainer({
    Key? key,
    required this.heading,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: 342,
      // height: 161,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white38),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.05),
            Color(0xFFC4C4C4).withOpacity(0.02),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // 'Definiton',
            heading,
            textAlign: TextAlign.start,
            style: TextStyle(
                // backgroundColor: Colors.black,
                // Color(0xFF2BC7A2)
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            // 'Moral prescription of the value, in opposition which; it condemn; acting conformarly to such prescription\n\nA positive value, useful, necessited, profitable, nice',
            detail,
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontSize: 15.0,
              //fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
