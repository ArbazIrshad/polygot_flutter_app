import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/word_category_tile_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272F54),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WordCategoryTileWidget(
                iconPath: 'assets/images/hi.png',
                text: 'Greetings',
                percentComplete: 70,
              ),
              WordCategoryTileWidget(
                iconPath: 'assets/images/hand.png',
                text: 'Byes',
              ),
            ],
          ),
          Expanded(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
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
          )
        ],
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
    );
  }
}
