import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/shared/colors.dart';

class AdBannerWidget extends StatelessWidget {
  final String mainText;
  final String secondText;
  const AdBannerWidget({
    Key? key,
    required this.mainText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      // alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: lightGray15
            // Color(0xFFC4C4C4).withOpacity(0.15)
            ,
          )),
      child: Row(
        children: [
          const GoldenCircleDone(),
          const SizedBox(
            width: 14.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainText,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                secondText,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GoldenCircleDone extends StatelessWidget {
  const GoldenCircleDone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      // padding: ,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.white30)),
      child: Align(
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    goldenYellow,
                    lightBrown,
                  ])),
          child: Icon(
            Icons.done,
            color: Colors.black,
            size: 16.0,
          ),
        ),
      ),
    );
  }
}
