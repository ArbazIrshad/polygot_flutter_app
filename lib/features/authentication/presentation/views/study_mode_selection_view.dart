import 'package:flutter/material.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

class StudyModeSelectionView extends StatelessWidget {
  const StudyModeSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // stops: [0.0, 0.01, 0.02, 0.25, 0.9],
            colors: [
              // Color(0xffB7EEF2),
              const Color(0xffFF9A5E).withOpacity(0.8),
              // Color(0xffFF9A5E),
              const Color(0xff282F54),
              const Color(0xFF172155),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Choose a study mode',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
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
                ModeSelectionTile(
                  imageAssetPath: 'assets/images/school.png',
                  text: 'School',
                ),
                ModeSelectionTile(
                  imageAssetPath: 'assets/images/travel.png',
                  text: 'Travel',
                ),
                ModeSelectionTile(
                  imageAssetPath: 'assets/images/hobby.png',
                  text: 'Hobby',
                ),
                ModeSelectionTile(
                  imageAssetPath: 'assets/images/work.png',
                  text: 'Work',
                ),
                ModeSelectionTile(
                  imageAssetPath: 'assets/images/language_prof.png',
                  text: 'Language Proficiency',
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            RoundedButtonWidget(
              onpressed: () {},
              buttonText: 'Next',
              width: 342,
              colors: const [
                Color.fromRGBO(70, 242, 255, 1.0),
                Color.fromRGBO(244, 87, 202, 1.0),
                // Colors.deepPurple.shade200,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}

class ModeSelectionTile extends StatelessWidget {
  final String imageAssetPath;
  final String text;
  const ModeSelectionTile({
    Key? key,
    required this.imageAssetPath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 196,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white10,
              Colors.white12,
            ],
          ),
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imageAssetPath),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
