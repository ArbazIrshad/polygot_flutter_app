import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF457F92),
              Color(0xFFEF5D80).withOpacity(0.8),
              // Color(0xFFF0B7D4).withOpacity(0.0),
              Color(0xFF172155),
              Color(0xFF282F54),
            ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white24,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Colors.yellow.shade600,
                      // color: Color(0xFFFFCC00),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset(
                      'assets/images/positive_vote.png',
                      // height: 12.0,
                      // width: 12 .0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                'Bien',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),
              // const Sized/
              Text(
                'Good',
                style: TextStyle(
                    // Color(0xFF2BC7A2)
                    color: Colors.greenAccent.shade200,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SectionContainer(
                heading: 'Definition',
                detail:
                    'Moral prescription of the value, in opposition which; it condemn; acting conformarly to such prescription\n\nA positive value, useful, necessited, profitable, nice',
              ),
              const SizedBox(
                height: 18.0,
              ),
              SectionContainer(
                heading: 'Definition',
                detail:
                    'Moral prescription of the value, in opposition which; it condemn; acting conformarly to such prescription\n\nA positive value, useful, necessited, profitable, nice',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedButtonWidget(
                    buttonText: 'Later',
                    onpressed: () {},
                    width: 168,
                    colors: [
                      Color(0xFFC4C4C4).withOpacity(0.25),
                      Color(0xFFC4C4C4).withOpacity(0.15)
                    ],
                  ),
                  RoundedButtonWidget(
                    buttonText: 'Next',
                    onpressed: () {},
                    width: 168,
                    colors: [
                      Color.fromRGBO(70, 242, 255, 1.0),
                      Color.fromRGBO(244, 87, 202, 1.0),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

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