import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272F54),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25.0,
            ),
            Text(
              'Review',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 56.0,
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cat 2 Basics',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.asset(
                            'icons/flags/png/gb.png',
                            height: 22.0,
                            width: 36.0,
                            package: 'country_icons',
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white54,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.asset(
                            'icons/flags/png/fr.png',
                            height: 22.0,
                            width: 36.0,
                            package: 'country_icons',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Icon(
                            Icons.favorite_rounded,
                            color: Color(0xFFEE3D4A),
                          ),
                          const SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            'Good',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            width: 100.0,
                          ),
                          Text(
                            'Bein',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.white10,
                      );
                    },
                    itemCount: 12),
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
