import 'dart:math' as math;
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../widgets/word_category_tile_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172155),
        body: Container(
          // color: Color(0xFF272F54),
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const SizedBox(
                      width: 36.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(
                        'icons/flags/png/gb.png',
                        height: 22.0,
                        width: 36.0,
                        package: 'country_icons',
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      'English',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    PopupMenuButton<String>(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(
                            'Spanish',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        PopupMenuItem(
                          child: Text(
                            'French',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ],
                      icon: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white10, width: 2.0),
                        ),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: Colors.black87,
                      offset: Offset(0, 50),
                    ),
                    const Spacer(),
                    // const SizedBox(
                    //   width: 60.0,
                    // ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 32,
                        ))
                  ],
                ),
                Container(
                  height: 150.0,
                  width: double.infinity,
                  // color: Colors.black87,
                  child: Stack(
                    // alignment: Alignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Positioned(
                        top: 0.0,
                        child: CircularPercentIndicator(
                          // arcBackgroundColor:[] ,
                          // col
                          radius: 50,
                          // arcType:,
                          linearGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFE86EC7),
                              Color(0xFF42FFBA),
                            ],
                          ),
                          rotateLinearGradient: true,
                          startAngle: 90,
                          // fillColor: Colors.transparent,
                          footer: Text(
                            'Intermediate',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white54,
                            ),
                          ),
                          backgroundColor: Colors.transparent,
                          circularStrokeCap: CircularStrokeCap.round,
                          lineWidth: 3.0,
                          center: Transform.rotate(
                            angle: -math.pi / 4,
                            child: ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFFEF5DA8),
                                          Color(0xFF79C9F7),
                                        ]).createShader(bounds),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                )),
                          ),
                          percent: 0.8,
                        ),
                      ),
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0),
                            children: [
                              TextSpan(
                                text: 'Hi Alex,\n',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                              TextSpan(text: 'The Course is waiting for you'),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        top: 26.0,
                        child: Container(
                          width: 104,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white24),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white10,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/images/alphabet_icon.png',
                                  width: 28,
                                ),
                                // Icon(
                                //   Icons.chat_bubble_outline,
                                //   size: 22.0,
                                //   color: Colors.white,
                                // ),
                                Text(
                                  'Check\nalphabet',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/hi.png',
                      text: 'Greetings',
                      percentComplete: 70,
                    ),
                    const SizedBox(
                      width: 32.0,
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/hand.png',
                      text: 'Byes',
                    ),
                  ],
                ),
                GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,

                    //  crossAxisSpacing: 1.0, mainAxisSpacing: 1.0
                  ),
                  children: [
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/circle.png',
                      text: 'basics',
                      percentComplete: 70,
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/triangle.png',
                      text: 'Pers Pro',
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/square.png',
                      text: 'Quest Pro',
                      percentComplete: 70,
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/apple.png',
                      text: 'Fruits',
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/broccoli.png',
                      text: 'Vegetables',
                      percentComplete: 70,
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/meat.png',
                      text: 'Meats',
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/backpack.png',
                      text: 'School',
                      percentComplete: 70,
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/globe.png',
                      text: 'Subject',
                    ),
                    WordCategoryTileWidget(
                      iconPath: 'assets/images/board.png',
                      text: 'Furniture',
                      percentComplete: 70,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: FluidNavBar(
          style: FluidNavBarStyle(
            iconSelectedForegroundColor: Colors.white,
            barBackgroundColor: Colors.white10,
            // iconBackgroundColor: Color(0xFFBC78F1),
          ),
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
      ),
    );
  }
}
