import 'package:flutter/material.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:polygot_app/shared/colors.dart';
import 'login_view.dart';
import 'signup_view.dart';

import '../widgets/or_divider.dart';
import '../../../../shared/widgets/rounded_button.dart';

const authBtnStyle = AuthButtonStyle(
  borderRadius: 12.0,
  height: 50.0,
  // iconType: AuthIconType.secondary,
);

class WelcomeView extends StatelessWidget {
  const WelcomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffFF9A5E).withOpacity(0.8),
              const Color(0xff282F54),
              const Color(0xFF172155),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SvgPicture.asset(
                      'assets/images/earth.svg',
                      height: 300.0,
                    ),
                    const Text(
                      'Get Started!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                GradientRoundedButtonWidget(
                  buttonText: 'Login',
                  onpressed: () {
                    Get.to(LoginView());
                  },
                  width: 500,
                  colors: const [
                    Color.fromRGBO(196, 196, 196, 0.25),
                    Color.fromRGBO(196, 196, 196, 0.15),
                    // Colors.deepPurple.shade200,
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                GradientRoundedButtonWidget(
                  buttonText: 'Signup',
                  onpressed: () {
                    Get.to(SignupView());
                  },
                  width: 500,
                  colors: LightPinkButtonGradientWithAlignment.colors,
                  begin: LightPinkButtonGradientWithAlignment.beginAlignment,
                  end: LightPinkButtonGradientWithAlignment.endAlignment,
                ),
                // ElevatedButton(onPressed: () {}, child: Text('Login')),
                //ElevatedButton(onPressed: () {}, child: Text('Login'),style: ButtonStyle(backgroundColor: Colors.transparent),),
                const SizedBox(
                  height: 22.0,
                ),
                const OrDivider(),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FacebookAuthButton(
                        text: 'Facebook',
                        darkMode: false,
                        onPressed: () {},
                        style: authBtnStyle.copyWith(
                          iconSize: 24.0,
                          textStyle: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: AppleAuthButton(
                        text: 'Apple',
                        onPressed: () {},
                        style: authBtnStyle.copyWith(
                          buttonColor: Colors.black,
                          iconColor: Colors.white,
                          iconSize: 24.0,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GoogleAuthButton(
                        text: 'Continue with Google',
                        onPressed: () {},
                        darkMode: false,
                        style: authBtnStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
