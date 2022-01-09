import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class SectionView extends StatelessWidget {
  const SectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272F54),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Statistics',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomRoundedOutlineGradientButton(
                    colors: [
                      Color(0xFF46F2FF),
                      Color(0xFFA5A6F6).withOpacity(0.0)
                    ],
                    text: 'Seen\n 296',
                  ),
                  CustomRoundedOutlineGradientButton(
                    colors: [
                      Color(0xFFFFBF54),
                      Color(0xFFFFBF54).withOpacity(0.0)
                    ],
                    text: 'Learning\n 296',
                  ),
                  CustomRoundedOutlineGradientButton(
                    colors: [
                      Color(0xFF80D261),
                      Color(0xFF80D261).withOpacity(0.0)
                    ],
                    text: 'Learned\n 296',
                  ),
                  CustomRoundedOutlineGradientButton(
                    colors: [
                      Color(0xFFBC78F1),
                      Color(0xFFC752E7).withOpacity(0.0)
                    ],
                    text: 'Favorites\n 296',
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Review',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 50.0,
                // width: 324,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                          color: Colors.white12, style: BorderStyle.none),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.white10)),
                    hintText: 'Search with category or words',
                    hintStyle: TextStyle(
                        color: Color(0xFF8F9BB3).withOpacity(0.54),
                        fontSize: 16.0),
                    // filled: true,
                    fillColor: Colors.white.withOpacity(0.03),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 26,
                      color: Colors.white54,
                    ),

                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.cancel_outlined),
                      iconSize: 26,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Grammar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 8.0,
              ),
              CustomOulineGradientButton(
                text: 'Articles',
                colors: [
                  Color(0xFFF457CA),
                  Color(0xFF8F9BB3).withOpacity(0.0),
                ],
                onTap: () {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              CustomOulineGradientButton(
                text: 'Numbers & Gender',
                colors: [
                  Color(0xFFFFBF54),
                  Color(0xFF8F9BB3).withOpacity(0.0),
                ],
                onTap: () {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              CustomOulineGradientButton(
                text: 'Suffix Prefix',
                colors: [
                  Color(0xFF2ECCA7),
                  Color(0xFF8F9BB3).withOpacity(0.0),
                ],
                onTap: () {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              CustomOulineGradientButton(
                text: 'Posseive Pronouns',
                colors: [
                  Color(0xFFBC78F1),
                  Color(0xFF8F9BB3).withOpacity(0.0),
                ],
                onTap: () {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Practice',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomOulineGradientButton(
                    text: 'Select\nCategory',
                    height: 116,
                    width: 156,
                    onTap: () {},
                    colors: [
                      Color(0xFFF457CA),
                      Color(0xFF8F9BB3).withOpacity(0.0),
                    ],
                  ),
                  // const SizedBox(
                  //   width: 8.0,
                  // ),
                  CustomOulineGradientButton(
                    text: 'Select\nRandom',
                    height: 116,
                    width: 156,
                    onTap: () {},
                    colors: [
                      Color(0xFFFFBF54),
                      Color(0xFF8F9BB3).withOpacity(0.0),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Center(
                child: InkWell(
                  child: Container(
                    height: 116,
                    width: 324,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFE95AC7),
                          Color(0xFFFFBF54),
                        ],
                      ),
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 14),
                            children: [
                              TextSpan(
                                text: '      Select\n',
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              TextSpan(
                                text: '      Word\n',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: 'Premium',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF2B2E5D)),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRoundedOutlineGradientButton extends StatelessWidget {
  final String text;
  final List<Color> colors;
  const CustomRoundedOutlineGradientButton({
    Key? key,
    required this.text,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      child: SizedBox(
        width: 80,
        height: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            // Icon(Icons.opacity, color: Colors.grey, size: 24),
          ],
        ),
      ),
      gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
      ),
      strokeWidth: 2.0,
      padding: EdgeInsets.zero,
      radius: Radius.circular(40),
    );
  }
}

class CustomOulineGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final List<Color> colors;
  final double height;
  final double? width;
  const CustomOulineGradientButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.colors,
    this.height = 56,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      // alignment: Alignment.center,
      child: OutlineGradientButton(
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              // textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          strokeWidth: 2.0,
          radius: Radius.circular(8.0),
          backgroundColor: Colors.white.withOpacity(0.05),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: colors)),
    );
  }
}
