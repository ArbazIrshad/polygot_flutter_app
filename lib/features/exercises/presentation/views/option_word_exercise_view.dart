import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:polygot_app/features/exercises/presentation/controllers/option_word_exercise_controller.dart';
import 'package:polygot_app/features/exercises/presentation/widgets/black_blurred_container.dart';
import 'package:polygot_app/shared/colors.dart';
import 'package:polygot_app/shared/widgets/option_selection_widget.dart';
import '../../../authentication/presentation/widgets/custom_text_input_form_field.dart';
import '../../../../shared/widgets/rounded_button.dart';

const placeholderList = ['Good', 'Bad', 'New'];

class OptionWordExerciseView extends StatelessWidget {
  const OptionWordExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OptionWordExerciseController());
    return Scaffold(
      body: Container(
        height: Get.size.height,
        // padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
          child: SizedBox(
            height: Get.size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
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
                ),
                Expanded(
                  child: BlackBlurredContainer(
                    child: Column(
                      children: [
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100.0,
                              height: 100.0,
                              child: Image.asset(
                                'assets/images/thumb_down.png',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Obx(
                          () => OptionSelectionWidget(
                            children: [
                              OptionItem(
                                  child: CustomOptionSelectionWidget(
                                    text: 'Good',
                                    isSelected: controller.isGoodSelected.value,
                                  ),
                                  onTap: () {
                                    controller.isGoodSelected.value = true;
                                    controller.isBadSelected.value = false;
                                    controller.isNewSelected.value = false;
                                  },
                                  isSelected: controller.isGoodSelected.value),
                              OptionItem(
                                  child: CustomOptionSelectionWidget(
                                    text: 'Bad',
                                    isSelected: controller.isBadSelected.value,
                                  ),
                                  onTap: () {
                                    controller.isGoodSelected.value = false;
                                    controller.isBadSelected.value = true;
                                    controller.isNewSelected.value = false;
                                  },
                                  isSelected: controller.isBadSelected.value),
                              OptionItem(
                                  child: CustomOptionSelectionWidget(
                                    text: 'New',
                                    isSelected: controller.isNewSelected.value,
                                  ),
                                  onTap: () {
                                    controller.isGoodSelected.value = false;
                                    controller.isBadSelected.value = false;
                                    controller.isNewSelected.value = true;
                                  },
                                  isSelected: controller.isNewSelected.value),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50.0,
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
                          onpressed: () {},
                          width: 348,
                          begin: LightPinkButtonGradientWithAlignment
                              .beginAlignment,
                          end:
                              LightPinkButtonGradientWithAlignment.endAlignment,
                          colors: LightPinkButtonGradientWithAlignment.colors,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          percent: 0.7,
                          width: 274,
                          lineHeight: 14.0,
                          progressColor: Color(0xFF92C9FB),
                          backgroundColor: Color(0xFFC4C4C4).withOpacity(0.32),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 86.0,
                          height: 28.0,
                          // margin: const EdgeInsets.all(12),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomOptionSelectionWidget extends StatelessWidget {
  final bool isSelected;
  final String text;
  const CustomOptionSelectionWidget({
    Key? key,
    required this.isSelected,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Spacer(),
        if (isSelected)
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFF2BC7A2), Color(0xFF2BC7A2)])),
          )
      ],
    );
  }
}
