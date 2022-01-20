import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/language_list_tile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF172155),
            Color(0xFF282F54),
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 26.0,
              ),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 32.0,
                    ),
                  ),
                  const SizedBox(
                    width: 86.0,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 26.0,
              ),
              Container(
                width: 344,
                height: 206,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white24),
                    // gradient: LinearGradient(colors: [Colors.white10]),
                    color: Colors.white10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/work.png',
                      height: 70.0,
                    ),
                    Text(
                      'Mark Robinson',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    Text(
                      'Regular User',
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              Text(
                'Languages',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 26.0,
              ),
              LangaugeListTile(
                flagIcon: 'icons/flags/png/fr.png',
                countryName: 'French',
                skillLevel: 'Intermediate',
              ),
              const Divider(
                color: Colors.white10,
              ),
              LangaugeListTile(
                flagIcon: 'icons/flags/png/es.png',
                countryName: 'Spanish',
                skillLevel: 'Beginner',
              ),
              const SizedBox(
                height: 26.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.white12),
                  color: Colors.white.withOpacity(0.18),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: [
                  //     Color(0xFFC4C4C4).withOpacity(0.25),
                  //     Color(0xFFC4C4C4).withOpacity(0.15),
                  //   ],
                  // ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 24,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Add new language',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    Text(
                      'Premium',
                      style: TextStyle(
                          color: Color(0xFFEABE4E),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
