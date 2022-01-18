import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/dashboard/presentation/views/fav_word_review.dart';
// import 'package:get/get_core/src/get_main.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF272F54),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Review',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 56.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
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
              const SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(FavouriteWordReviewView());
                          },
                          child: Row(
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
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.white10,
                        );
                      },
                      itemCount: 24),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: FluidNavBar(
        //   style: FluidNavBarStyle(
        //     iconSelectedForegroundColor: Colors.white,
        //     barBackgroundColor: Colors.white10,
        //   ),
        //   animationFactor: 0.3,
        //   icons: [
        //     FluidNavBarIcon(icon: Icons.checklist),
        //     FluidNavBarIcon(icon: Icons.collections_bookmark_outlined),
        //     FluidNavBarIcon(icon: Icons.list_outlined),
        //     FluidNavBarIcon(
        //       icon: Icons.dashboard,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
