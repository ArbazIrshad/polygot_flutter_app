import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:polygot_app/features/authentication/presentation/widgets/list_wheel_horizontal.dart';
import 'package:polygot_app/shared/colors.dart';
import 'study_mode_selection_view.dart';
import '../widgets/language_type_list_item_widget.dart';
import '../../../../shared/widgets/rounded_button.dart';

class LanguageSelectionView extends StatelessWidget {
  const LanguageSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.size.height,
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF9A5E),
                Color(0xff282F54),
                Color(0xFF172155),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 26.0,
                ),
                const Text(
                  'Target Language',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Container(
                  height: 200.0,
                  child: ListWheelScrollViewX(
                      // useMagnifier: true,
                      // magnification: 1.2,
                      // clipBehavior: Clip.none,

                      squeeze: 1.2,
                      diameterRatio: 1.5,
                      perspective: 0.005,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 116,
                          height: 150,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 8.0,
                                left: 12.0,
                                child: Text(
                                  'Japanese',
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              Image.asset(
                                'assets/images/languages/japanese.png',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 116,
                          height: 150,
                          child: Stack(
                            // alignment: Alignment.center,
                            children: [
                              Positioned(
                                // alignment: Alignment.topCenter,
                                top: 8.0,
                                left: 20.0,
                                child: Text(
                                  'French',
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              Image.asset(
                                'assets/images/languages/French.png',
                                // height: 200,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 116,
                          height: 150,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 8.0,
                                left: 24.0,
                                child: Text(
                                  'Italian',
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              Image.asset(
                                'assets/images/languages/Italian.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                      itemExtent: 150,
                      controller: FixedExtentScrollController(initialItem: 1),
                      onSelectedItemChanged: (index) {}),
                ),
                // CarouselSlider(
                //   items: [
                //     Container(
                //       width: 116,
                //       height: 150,
                //       child: Stack(
                //         children: [
                //           Positioned(
                //             top: 8.0,
                //             left: 12.0,
                //             child: Text(
                //               'Japanese',
                //               // textAlign: TextAlign.center,
                //               style: TextStyle(
                //                   fontSize: 14,
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.white),
                //             ),
                //           ),
                //           Image.asset(
                //             'assets/images/languages/japanese.png',
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 116,
                //       height: 150,
                //       child: Stack(
                //         // alignment: Alignment.center,
                //         children: [
                //           Positioned(
                //             // alignment: Alignment.topCenter,
                //             top: 8.0,
                //             left: 20.0,
                //             child: Text(
                //               'French',
                //               // textAlign: TextAlign.center,
                //               style: TextStyle(
                //                   fontSize: 14,
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.white),
                //             ),
                //           ),
                //           Image.asset(
                //             'assets/images/languages/French.png',
                //             // height: 200,
                //           ),
                //         ],
                //       ),
                //     ),
                //     Container(
                //       width: 116,
                //       height: 150,
                //       child: Stack(
                //         children: [
                //           Positioned(
                //             top: 8.0,
                //             left: 24.0,
                //             child: Text(
                //               'Italian',
                //               // textAlign: TextAlign.center,
                //               style: TextStyle(
                //                   fontSize: 14,
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.white),
                //             ),
                //           ),
                //           Image.asset(
                //             'assets/images/languages/Italian.png',
                //           ),
                //         ],
                //       ),
                //     ),
                //     // Container(
                //   ],
                //   options: CarouselOptions(
                //     enlargeCenterPage: true,
                //     pageSnapping: true,
                //     enableInfiniteScroll: false,
                //     viewportFraction: 0.3,
                //     initialPage: 1,
                //     // enlargeStrategy: CenterPageEnlargeStrategy.height,
                //   ),
                // ),
                // Stack(
                //   children: [
                //     Container(
                //       height: 220,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Image.asset('assets/images/japan.png'),
                //           Image.asset('assets/images/italy.png')
                //         ],
                //       ),
                //     ),
                //     Align(
                //       child: Image.asset('assets/images/french.png'),
                //       alignment: Alignment.topCenter,
                //     )
                //   ],
                // ),
                // ListWheelScrollViewX(builder: builder, itemExtent: itemExtent, controller: controller, onSelectedItemChanged: onSelectedItemChanged),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  'Why French?',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                    color: Color(0xFFF178B6),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                // Column(
                //   children: [
                //     LanguageTypeListItemWidget(
                //         leadingText: 'M French',
                //         trailingText: 'M',
                //         borderRadius: const BorderRadius.vertical(
                //           top: Radius.circular(4.0),
                //         ),
                //         isSelected: true),
                //     LanguageTypeListItemWidget(
                //         leadingText: 'R French',
                //         trailingText: 'R',
                //         borderRadius: BorderRadius.zero,
                //         isSelected: false),
                //     LanguageTypeListItemWidget(
                //         leadingText: 'Canadian French',
                //         trailingText: 'C',
                //         borderRadius: const BorderRadius.vertical(
                //           bottom: Radius.circular(4.0),
                //         ),
                //         isSelected: false),
                //   ],
                // ),
                const SizedBox(
                  height: 26.0,
                ),
                const Text(
                  'Your level',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 26.0,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.44,
                      enableInfiniteScroll: false,
                      height: 30.0,
                      initialPage: 1,
                      // enlargeStrategy: CenterPageEnlargeStrategy.height,
                      // reverse: true,
                      // disableCenter: true,
                      pageSnapping: true,
                      scrollDirection: Axis.horizontal),
                  items: [
                    Container(
                      // color: Colors.red,
                      child: const Text(
                        'Beginner',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Text(
                      'Intermediate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Advanced',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                GradientRoundedButtonWidget(
                  buttonText: 'Next',
                  onpressed: () {
                    Get.to(StudyModeSelectionView());
                  },
                  width: 500,
                  colors: LightPinkButtonGradientWithAlignment.colors,
                  begin: LightPinkButtonGradientWithAlignment.beginAlignment,
                  end: LightPinkButtonGradientWithAlignment.endAlignment,
                ),
                const SizedBox(
                  height: 26.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
