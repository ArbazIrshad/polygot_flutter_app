import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../controllers/daily_review_controller.dart';
import '../../../dashboard/presentation/views/main_page_view.dart';
import '../../../../shared/colors.dart';
import '../../../authentication/presentation/views/study_mode_selection_view.dart';
import '../../../dashboard/presentation/views/section_view.dart';
import '../../../../shared/widgets/rounded_button.dart';

const placeholderList = ['Good', 'Bad', 'New'];

class DailyReviewView extends StatelessWidget {
  const DailyReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DailyReviewController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
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
                width: Get.size.width,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    // border: Border.all(color: Colors.white38, width: 0.5),
                    color: Colors.white.withOpacity(0.05)
                    // gradient: LinearGradient(
                    //   colors: [
                    //     Colors.white.withOpacity(0.05),
                    //     Color(0xFFC4C4C4).withOpacity(0.02)
                    //   ],
                    // ),
                    ),
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.isGoodSelected.value = true;
                          controller.isBadSelected.value = false;
                          controller.isNewSelected.value = false;
                        },
                        child: Container(
                          height: 150 / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.0)),
                              border: Border.all(
                                  color: controller.isGoodSelected.isTrue
                                      ? leafGreen
                                      : Colors.white38,
                                  width: controller.isGoodSelected.isTrue
                                      ? 1.0
                                      : 0.5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 12.0),
                          child: Text(
                            'Good',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.isGoodSelected.value = false;
                          controller.isBadSelected.value = true;
                          controller.isNewSelected.value = false;
                        },
                        child: Container(
                          height: 150 / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.zero,
                              border: Border.all(
                                  color: controller.isBadSelected.isTrue
                                      ? leafGreen
                                      : Colors.white38,
                                  width: controller.isBadSelected.isTrue
                                      ? 1.0
                                      : 0.5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 12.0),
                          child: Text(
                            'Bad',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.isGoodSelected.value = false;
                          controller.isBadSelected.value = false;
                          controller.isNewSelected.value = true;
                        },
                        child: Container(
                          height: 150 / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(12.0)),
                              border: Border.all(
                                  color: controller.isNewSelected.isTrue
                                      ? leafGreen
                                      : Colors.white38,
                                  width: controller.isNewSelected.isTrue
                                      ? 1.0
                                      : 0.5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 12.0),
                          child: Text(
                            'New',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
              GradientRoundedButtonWidget(
                buttonText: 'Continue',
                onpressed: () {
                  Get.to(() => MainPageView());
                },
                width: 500,
                colors: const [
                  Color.fromRGBO(70, 242, 255, 1.0),
                  Color.fromRGBO(244, 87, 202, 1.0),
                  // Colors.deepPurple.shade200,
                ],
                begin: Alignment(0, -3),
                end: Alignment(0, 1),
              ),
              SizedBox(
                height: 16,
              ),
              LinearPercentIndicator(
                alignment: MainAxisAlignment.center,
                percent: 0.7,
                width: 274,
                lineHeight: 14.0,
                progressColor: Color(0xFF92C9FB),
                backgroundColor: Color(0xFFC4C4C4).withOpacity(0.32),
              )
            ],
          ),
        ),
      ),
    );
  }
}
