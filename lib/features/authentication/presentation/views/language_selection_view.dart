import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/authentication/presentation/views/study_mode_selection_view.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

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
            // stops: [0.1, 0.4, 0.9],
            colors: [
              // const Color(0xffFF9A5E).withOpacity(0.8),
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
                LanguageTypeListItem(
                    leadingText: 'M French',
                    trailingText: 'M',
                    isSelected: true),
                LanguageTypeListItem(
                    leadingText: 'R French',
                    trailingText: 'R',
                    isSelected: false),
                LanguageTypeListItem(
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
            RoundedButtonWidget(
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

class LanguageTypeListItem extends StatelessWidget {
  final bool isSelected;
  final String leadingText;
  final String trailingText;

  const LanguageTypeListItem({
    Key? key,
    required this.isSelected,
    required this.leadingText,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
          border: Border.all(
            color:
                isSelected ? const Color(0xFFFFAF75) : const Color(0xFF4F515C),
          ),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(4.0))),
      child: Row(
        children: [
          Text(
            leadingText,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? const Color(0xFFFFAF75)
                    : const Color(0xFF4F515C),
              ),
              gradient: isSelected
                  ? LinearGradient(
                      colors: [
                        Color(0xFFFFAF75),
                        Color(0xFFFBEBA0),
                      ],
                    )
                  : null,
            ),
            child: CircleAvatar(
              child: Text(
                trailingText,
                style: TextStyle(
                    color: isSelected ? Colors.black : const Color(0xFF4F515C),
                    fontSize: 15.0),
              ),
              radius: 18.0,
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
