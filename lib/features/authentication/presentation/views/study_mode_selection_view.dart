import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/shared/colors.dart';

import '../../../../shared/widgets/rounded_button.dart';
import '../widgets/mode_selection_tile_widget.dart';

class StudyModeSelectionView extends StatelessWidget {
  const StudyModeSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: Column(
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
                GridView.count(
                  // padding: const EdgeInsets.all(24.0),
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  children: [
                    ModeSelectionTileWidget(
                      imageAssetPath: 'assets/images/school.png',
                      text: 'School',
                    ),
                    ModeSelectionTileWidget(
                      imageAssetPath: 'assets/images/travel.png',
                      text: 'Travel',
                    ),
                    ModeSelectionTileWidget(
                      imageAssetPath: 'assets/images/hobby.png',
                      text: 'Hobby',
                    ),
                    ModeSelectionTileWidget(
                      imageAssetPath: 'assets/images/work.png',
                      text: 'Work',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                ModeSelectionTileWidget(
                  width: Get.size.width,
                  height: 127,
                  imageAssetPath: 'assets/images/language_prof.png',
                  text: 'Language Proficiency',
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
    );
  }
}
