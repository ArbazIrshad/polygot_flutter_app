import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../widgets/selected_word_widget.dart';
import '../../../../shared/widgets/rounded_button.dart';

class SelectErrorsExerciseView extends StatelessWidget {
  const SelectErrorsExerciseView({Key? key}) : super(key: key);

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
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                'Select the errors',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white10, Colors.transparent],
                )),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Morrsion how ',
                        children: [
                          TextSpan(
                            text: 'cats\n',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Color(0xFFFF6978),
                              decorationThickness: 2.0,
                            ),
                          ),
                          TextSpan(text: 'are you?'),
                        ],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'Selected words',
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SelectedWordWidget(text: 'cats'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              Text(
                '15 words left',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GradientRoundedButtonWidget(
                buttonText: 'Validate',
                onpressed: () {
                  Get.dialog(Dialog(
                    backgroundColor: Colors.blueGrey.shade300,
                    child: Container(
                      height: 266.0,
                      // width: 282,
                      // color: Colors.black,
                      // margin: const EdgeInsetsDirectional.only(end: 8.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 2.0),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            color: Color(0xFFEA8694),
                            size: 40.0,
                          ),
                          Text(
                            'Mistake',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFEA8694),
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 24),
                          ),
                          Text(
                            'Please try again',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                          GradientRoundedButtonWidget(
                            buttonText: 'Close',
                            onpressed: () => Get.back(),
                            width: 240,
                            colors: [
                              Color.fromRGBO(70, 242, 255, 1.0),
                              Color.fromRGBO(244, 87, 202, 1.0),
                            ],
                          )
                        ],
                      ),
                    ),
                  ));
                },
                width: 348,
                colors: [
                  Color.fromRGBO(70, 242, 255, 1.0),
                  Color.fromRGBO(244, 87, 202, 1.0),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: LinearPercentIndicator(
                  percent: 0.7,
                  width: 274,
                  lineHeight: 14.0,
                  progressColor: Color(0xFF92C9FB),
                  backgroundColor: Color(0xFFC4C4C4).withOpacity(0.32),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 86.0,
                height: 28.0,
                // padding: const EdgeInsets.all(0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white10,
                    ),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  'Basics 2.1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
