import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../shared/widgets/frosted_blur_widget.dart';

class FavouriteWordReviewView extends StatelessWidget {
  const FavouriteWordReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172155),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    iconSize: 32,
                  ),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     '< Back',
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w600),
                  //   ),
                  // ),
                  Text(
                    'Elementry Level',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.star_border_outlined, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: Get.size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white10,
                ),
                child: Stack(
                  children: [
                    Container(),
                    Positioned.fill(
                      top: 10,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white.withOpacity(0.08),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 20,
                      child: FrostedBlur(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.white.withOpacity(0.05),
                            // gradient: LinearGradient(colors: [
                            //   Colors.white.withAlpha(26),
                            //   Colors.white.withAlpha(13),
                            // ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/images/positive_vote.png',
                                height: 96,
                                width: 96,
                              ),
                              Text(
                                'Bien',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Good',
                                style: TextStyle(
                                    color: Color(0xFF2BC7A2),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              // const Divider(
                              //   color: Colors.white54,
                              // ),
                              Container(
                                width: 332.0,
                                // height: 126.0,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0xFFC4C4C4).withOpacity(0.12)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Definition',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Moral prescription of the value, in opposition which; it condemn; acting conformarly to such prescription\n\nA positive value, useful, necessited, profitable, nice valuables.',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.87),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 332.0,
                                // height: 126.0,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0xFFC4C4C4).withOpacity(0.12)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Examples',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Moral prescription of the value, in opposition which; it condemn; acting conformarly to such prescription\n\nA positive value, useful, necessited, profitable, nice valuables.',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.87),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 332.0,
                                // height: 126.0,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius: BorderRadius.circular(10.0),
                                  // color: Colors.white10,
                                ),
                                child: TextField(
                                  maxLines: 4,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Note',
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.white)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
