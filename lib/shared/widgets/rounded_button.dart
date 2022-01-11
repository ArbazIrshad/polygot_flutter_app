import 'package:flutter/material.dart';

class GradientRoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final double width;
  final Function onpressed;
  final List<Color> colors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<double>? stops;

  const GradientRoundedButtonWidget({
    required this.buttonText,
    required this.width,
    required this.onpressed,
    required this.colors,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
    this.stops,
  }) : assert(stops != null ? colors.length == 2 : true,
            'stops and color length should be equal to each other.');

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
        // ],
        gradient: LinearGradient(
            begin: begin,
            end: end,
            // stops: [-2.0, 1.5],
            colors: colors),
        // color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //   RoundedRectangleBorder(
          //       // borderRadius: BorderRadius.circular(12.0),
          //       ),
          // ),
          minimumSize: MaterialStateProperty.all(Size(width, 50)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          // elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {
          onpressed();
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
