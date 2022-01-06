import 'dart:ui';

import 'package:flutter/material.dart';

class FavouriteWordReviewView extends StatelessWidget {
  const FavouriteWordReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF172155),
      body: Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '< Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white10,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 20,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white12,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white24,
                        // gradient: LinearGradient(colors: [
                        //   Colors.white.withAlpha(26),
                        //   Colors.white.withAlpha(13),
                        // ]),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(),
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
                              'Bien',
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
                              height: 126.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xFFC4C4C4).withOpacity(0.12)),
                              child: Text(
                                'Definition',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: 332.0,
                              height: 126.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white10),
                              child: TextField(
                                maxLines: 8,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // filled: true,
                                    hintText: 'Notes',
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
            ),
          )
        ],
      ),
    );
  }
}
