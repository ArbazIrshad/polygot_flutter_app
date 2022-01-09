import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272F54),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WordCategoryTileWIdget(
                  iconPath: 'assets/images/hi.png',
                  text: 'Greetings',
                  percentComplete: 70,
                ),
                WordCategoryTileWIdget(
                  iconPath: 'assets/images/hand.png',
                  text: 'Byes',
                ),
              ],
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: [
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/circle.png',
                    text: 'basics',
                    percentComplete: 70,
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/triangle.png',
                    text: 'Pers Pro',
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/square.png',
                    text: 'Quest Pro',
                    percentComplete: 70,
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/apple.png',
                    text: 'Fruits',
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/broccoli.png',
                    text: 'Vegetables',
                    percentComplete: 70,
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/meat.png',
                    text: 'Meats',
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/backpack.png',
                    text: 'School',
                    percentComplete: 70,
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/globe.png',
                    text: 'Subject',
                  ),
                  WordCategoryTileWIdget(
                    iconPath: 'assets/images/board.png',
                    text: 'Furniture',
                    percentComplete: 70,
                  ),
                ],
              ),
            )
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

class WordCategoryTileWIdget extends StatelessWidget {
  final String iconPath;
  final String text;
  final double? percentComplete;
  const WordCategoryTileWIdget({
    Key? key,
    required this.iconPath,
    required this.text,
    this.percentComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 86.0,
          width: 96.0,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 4.0),
                    height: 12,
                    width: 12.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF2DD3F8), shape: BoxShape.circle),
                  )
                ],
              ),
              Image.asset(iconPath),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        if (percentComplete != null)
          Text(
            '$percentComplete%',
            style: TextStyle(
                color: Colors.white38,
                fontWeight: FontWeight.w500,
                fontSize: 15.0),
          )
      ],
    );
  }
}
