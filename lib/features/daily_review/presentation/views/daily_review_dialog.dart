import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

class DailyReviewDialog extends StatelessWidget {
  const DailyReviewDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // stops: [0.1, 0.4, 0.9],
            colors: [
              // const Color(0xffFF9A5E).withOpacity(0.8),
              Color(0xFF5EC5FF),
              Color(0xFF282F54),
              Color(0xFF172155),
            ],
          ),
        ),
        child: Column(
          children: [
            Text(
              'Daily Practice',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              'Practice Daily to get results',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white54),
            ),
            Container(
              width: 357,
              height: 236,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white10, Color(0xFFC4C4C4).withOpacity(0.02)],
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 343,
                      height: 46,
                      child: Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                // border: Border.all(
                                //   color: Color(0xFF8F9BB3).withOpacity(1.0),
                                // ),
                                gradient: LinearGradient(colors: [
                                  Colors.white.withOpacity(0.05),
                                  Color(0xFFC4C4C4).withOpacity(0.02)
                                ])),
                            child: Container(
                              height: 16.0,
                              width: 16.0,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(16.0),
                                shape: BoxShape.circle,

                                border: Border.all(
                                  color: Color(0xFF8F9BB3).withOpacity(1.0),
                                ),
                                // color: Color(0xFF8F9BB3).withOpacity(0.2),
                              ),
                              child: Text(
                                  MediaQuery.of(context).size.width.toString()),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: Column(
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  color: Colors.black,
                                  child: Expanded(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Short',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17.0,
                                              // height: 20,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '30 Words',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13.0,
                                              // height: 20,
                                              color: Colors.white70),
                                        ),
                                        RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                    color: Colors
                                                        .orangeAccent[400],
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.0),
                                                children: [
                                              TextSpan(text: 'Premium'),
                                              WidgetSpan(
                                                  child: Icon(
                                                Icons.star,
                                                color: Colors.orangeAccent[400],
                                                size: 12,
                                              ))
                                            ])),
                                      ],
                                    ),
                                  ),
                                ),
                                LinearPercentIndicator(
                                  percent: 0.7,
                                  width: 274,
                                  lineHeight: 9.0,
                                  progressColor: Color(0xFF6FCF97),
                                  backgroundColor:
                                      Color(0xFFC4C4C4).withOpacity(0.32),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            RoundedButtonWidget(
              buttonText: 'Start',
              onpressed: () {
                // Get.to(StudyModeSelectionView());
              },
              width: 500,
              colors: const [
                Color.fromRGBO(70, 242, 255, 1.0),
                Color.fromRGBO(244, 87, 202, 1.0),
                // Colors.deepPurple.shade200,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}
