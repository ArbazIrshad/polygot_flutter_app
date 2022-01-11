import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'study_mode_selection_view.dart';
import '../widgets/language_type_list_item_widget.dart';
import '../../../../shared/widgets/rounded_button.dart';

class LanguageSelectionView extends StatelessWidget {
  const LanguageSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFF9A5E),
              Color(0xff282F54),
              Color(0xFF172155),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Target Language',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/japan.png'),
                      Image.asset('assets/images/italy.png')
                    ],
                  ),
                ),
                Align(
                  child: Image.asset('assets/images/french.png'),
                  alignment: Alignment.topCenter,
                )
              ],
            ),
            const Text(
              'Why French?',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17.0,
                color: Color(0xFFF178B6),
              ),
            ),
            Column(
              children: [
                LanguageTypeListItemWidget(
                    leadingText: 'M French',
                    trailingText: 'M',
                    isSelected: true),
                LanguageTypeListItemWidget(
                    leadingText: 'R French',
                    trailingText: 'R',
                    isSelected: false),
                LanguageTypeListItemWidget(
                    leadingText: 'Canadian French',
                    trailingText: 'C',
                    isSelected: false),
              ],
            ),
            const Text(
              'Your level',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
            const Text(
              'Intermediate',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            GradientRoundedButtonWidget(
              buttonText: 'Next',
              onpressed: () {
                Get.to(StudyModeSelectionView());
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
