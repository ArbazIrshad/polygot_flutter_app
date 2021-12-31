import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

const placeholderList = ['Good', 'Bad', 'New'];

class DailyReviewView extends StatelessWidget {
  const DailyReviewView({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/thumb_down.png'),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 344,
              height: 150,
              // padding: const EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.white38, width: 0.5),
                gradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  // stops: [0.1, 0.4, 0.9],
                  colors: [
                    // const Color(0xffFF9A5E).withOpacity(0.8),
                    Colors.white.withOpacity(0.05),
                    Color(0xFFC4C4C4).withOpacity(0.02)
                    // Colors.white,
                    // Colors.white.withOpacity(0.0)
                  ],
                ),
              ),

              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 2.0),
                        child: Text(
                          placeholderList[index],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                  separatorBuilder: (_, __) => const Divider(
                        color: Colors.white38,
                        thickness: 0.5,
                      ),
                  itemCount: placeholderList.length),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '15 words left',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
            SizedBox(
              height: 16,
            ),
            RoundedButtonWidget(
              buttonText: 'Continue',
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
            SizedBox(
              height: 16,
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
            )
          ],
        ),
      ),
    );
  }
}
