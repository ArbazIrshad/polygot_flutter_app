import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/authentication/presentation/controllers/study_mode_selection_controller.dart';
import 'package:polygot_app/shared/colors.dart';

import '../../../../shared/widgets/rounded_button.dart';
import '../widgets/mode_selection_tile_widget.dart';

class StudyModeSelectionView extends StatelessWidget {
  const StudyModeSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StudyModeSelectionController());
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.size.height,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xffFF9A5E).withOpacity(0.8),
                const Color(0xff282F54),
                const Color(0xFF172155),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 26.0,
                  ),
                  Text(
                    'Choose a study mode',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 26.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ModeSelectionTileWidget(
                        imageAssetPath: 'assets/images/school.png',
                        text: 'School',
                        isSelected: controller.isSchoolOptionSelected.value,
                        onTap: () {
                          controller.isSchoolOptionSelected.value = true;

                          controller.isHobbyOptionSelected.value = false;
                          controller.isTravelOptionSelected.value = false;
                          controller.isWorkOptionSelected.value = false;
                          controller.isLanguageProfOptionSelected.value = false;
                        },
                      ),
                      ModeSelectionTileWidget(
                        imageAssetPath: 'assets/images/travel.png',
                        text: 'Travel',
                        isSelected: controller.isTravelOptionSelected.value,
                        onTap: () {
                          controller.isTravelOptionSelected.value = true;

                          controller.isHobbyOptionSelected.value = false;
                          controller.isSchoolOptionSelected.value = false;
                          controller.isWorkOptionSelected.value = false;
                          controller.isLanguageProfOptionSelected.value = false;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ModeSelectionTileWidget(
                        imageAssetPath: 'assets/images/hobby.png',
                        text: 'Hobby',
                        isSelected: controller.isHobbyOptionSelected.value,
                        onTap: () {
                          controller.isHobbyOptionSelected.value = true;

                          controller.isSchoolOptionSelected.value = false;
                          controller.isTravelOptionSelected.value = false;
                          controller.isWorkOptionSelected.value = false;
                          controller.isLanguageProfOptionSelected.value = false;
                        },
                      ),
                      ModeSelectionTileWidget(
                        imageAssetPath: 'assets/images/work.png',
                        text: 'Work',
                        isSelected: controller.isWorkOptionSelected.value,
                        onTap: () {
                          controller.isWorkOptionSelected.value = true;

                          controller.isSchoolOptionSelected.value = false;
                          controller.isHobbyOptionSelected.value = false;
                          controller.isTravelOptionSelected.value = false;
                          controller.isLanguageProfOptionSelected.value = false;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  ModeSelectionTileWidget(
                    width: Get.size.width,
                    height: 127,
                    imageAssetPath: 'assets/images/language_prof.png',
                    isSelected: controller.isLanguageProfOptionSelected.value,
                    text: 'Language Proficiency',
                    onTap: () {
                      controller.isLanguageProfOptionSelected.value = true;

                      controller.isSchoolOptionSelected.value = false;
                      controller.isHobbyOptionSelected.value = false;
                      controller.isTravelOptionSelected.value = false;
                      controller.isWorkOptionSelected.value = false;
                    },
                  ),
                  // const SizedBox(
                  //   height: 12.0,
                  // ),
                  const SizedBox(
                    height: 26.0,
                  ),
                  GradientRoundedButtonWidget(
                    onpressed: () {},
                    buttonText: 'Next',
                    width: 342,
                    colors: LightPinkButtonGradientWithAlignment.colors,
                    begin: LightPinkButtonGradientWithAlignment.beginAlignment,
                    end: LightPinkButtonGradientWithAlignment.endAlignment,
                  ),
                  const SizedBox(
                    height: 26.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
