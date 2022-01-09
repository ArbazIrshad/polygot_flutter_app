import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PracticeView extends StatelessWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272F54),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(color: Color(0xFF272F54)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 26.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  constraints: const BoxConstraints(),
                  // alignment: Alignment.topLeft,
                  padding: EdgeInsets.zero,
                  // color: Colors.black,

                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_left,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Practice',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                CircularPercentIndicator(
                  radius: 50.0,
                  linearGradient: LinearGradient(colors: [
                    Color(0xFFA5F6C5),
                    Color(0xFFA5A6F6),
                  ]),
                  // rotateLinearGradient: true,
                  // arcBackgroundColor: Color(0xFFA5F6C5),
                  // arcType: ArcType.,
                  percent: 0.7,
                  // progressColor: Color(0xFFA5F6C5),
                  center: Text(
                    '15:00',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              'Priority',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 26.0,
            ),
            PrioritySelectionWidget(
              text: 'Less Practiced',
            ),
            const SizedBox(
              height: 8.0,
            ),
            PrioritySelectionWidget(
              text: 'Favourites',
            ),
            const SizedBox(
              height: 8.0,
            ),
            PrioritySelectionWidget(
              text: 'Aleatory',
            ),
            const SizedBox(
              height: 8.0,
            ),
            PrioritySelectionWidget(
              text: 'Newest',
              isSelected: true,
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              'Length',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WordLengthSelectionWidget(
                  wordLength: 'Short',
                  wordCount: '50',
                ),
                WordLengthSelectionWidget(
                  wordLength: 'Medium',
                  wordCount: '80',
                  wordCountColor: Color(0xFFF178B6),
                  isPremium: true,
                ),
                WordLengthSelectionWidget(
                  wordLength: 'Complete',
                  wordCount: '155',
                  wordCountColor: Color(0xFFEABE4E),
                  isPremium: true,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: FluidNavBar(
        style: FluidNavBarStyle(
          iconSelectedForegroundColor: Colors.white,
          barBackgroundColor: Colors.white10,
          // iconBackgroundColor: Color(0xFFBC78F1),
        ),
        // itemBuilder: (icon, item) {
        //   return Container(
        //       decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           gradient: LinearGradient(
        //               begin: Alignment.topRight,
        //               end: Alignment.bottomLeft,
        //               colors: [
        //                 Color(0xFFBC78F1),
        //                 Color(0xFF2ECCA7),
        //               ])),
        //       child: item);
        // },

        animationFactor: 0.3,
        icons: [
          FluidNavBarIcon(icon: Icons.checklist),
          FluidNavBarIcon(icon: Icons.collections_bookmark_outlined),
          FluidNavBarIcon(icon: Icons.list_outlined),
          FluidNavBarIcon(
            icon: Icons.dashboard,
            // backgroundColor: LinearGradient(colors: )
          ),
        ],
      ),
    );
  }
}

class WordLengthSelectionWidget extends StatelessWidget {
  final String wordLength;
  final String wordCount;
  final Color wordCountColor;
  final isPremium;
  const WordLengthSelectionWidget({
    Key? key,
    required this.wordLength,
    required this.wordCount,
    this.wordCountColor = Colors.white,
    this.isPremium = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.white24),
              color: Colors.white10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                wordLength,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                wordCount,
                style: TextStyle(
                    color: wordCountColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
              Text(
                'words',
                style: TextStyle(
                    color: Colors.white30,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        if (isPremium)
          Text(
            'Premium',
            style: TextStyle(
                color: Color(0xFFEABE4E),
                fontWeight: FontWeight.w600,
                fontSize: 13),
          ),
      ],
    );
  }
}

class PrioritySelectionWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const PrioritySelectionWidget({
    Key? key,
    this.isSelected = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 344,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          Container(
            height: 12.0,
            width: 12.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Color(0xFFA5A6F6) : null,
              border: Border.all(color: Colors.white38),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
