import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_text_input_form_field.dart';
import '../../../../shared/widgets/rounded_button.dart';

import 'language_selection_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // stops: [0.1, 0.4, 0.9],
            colors: [
              // const Color(0xffFF9A5E).withOpacity(0.8),
              Color(0xffFF9A5E),
              Color(0xff282F54),
              Color(0xFF172155),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 36.0,
              ),
              const Text(
                'Welcome!',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32.0,
                    color: Colors.white),
              ),
              Text(
                'Please fill your credentials to continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                  color: Colors.white.withOpacity(0.54),
                ),
              ),
              const SizedBox(height: 16.0),
              CustomTextInputFormField(
                text: 'Username',
                width: 344.0,
                height: 48.0,
              ),
              const SizedBox(height: 16.0),
              CustomTextInputFormField(
                text: 'Email',
                width: 344.0,
                height: 48.0,
              ),
              const SizedBox(height: 16.0),
              CustomTextInputFormField(
                text: 'Country',
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextInputFormField(
                    text: 'Age',
                    width: 104.0,
                    height: 48.0,
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              CustomTextInputFormField(
                text: 'Password',
                width: 344.0,
                height: 48.0,
              ),
              const SizedBox(height: 16.0),
              CustomTextInputFormField(
                text: 'Password Confirmation',
                width: 344.0,
                height: 48.0,
              ),
              const SizedBox(height: 16.0),
              GradientRoundedButtonWidget(
                buttonText: 'Continue',
                onpressed: () {
                  Get.to(LanguageSelectionView());
                },
                colors: const [
                  Color.fromRGBO(70, 242, 255, 1.0),
                  Color.fromRGBO(244, 87, 202, 1.0),

                  // Colors.deepPurple.shade200,
                ],
                width: 342,
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: const Color(0xFFA5A6F6),
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                  ),
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                // strutStyle: StrutStyle.,
                text: TextSpan(
                    text: 'By continuing you agree to the\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                        height: 1.2),
                    children: [
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007AFF),
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007AFF),
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 26.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
