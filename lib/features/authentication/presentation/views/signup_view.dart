import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:polygot_app/shared/colors.dart';
import '../widgets/custom_text_input_form_field.dart';
import '../../../../shared/widgets/rounded_button.dart';

import 'language_selection_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.chevron_left,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 26.0),
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32.0,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  'Just one step to start learning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                      color: Colors.white54),
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
                  suffix: CountryCodePicker(
                    showCountryOnly: true,
                    hideMainText: true,
                    initialSelection: 'AE',
                    onChanged: (country) {
                      // country.
                      print('');
                      print('Country Name: ${country.name}');
                      print('Country Code: ${country.code?.toLowerCase()}');
                    },
                  ),
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
                  colors: LightPinkButtonGradientWithAlignment.colors,
                  begin: LightPinkButtonGradientWithAlignment.beginAlignment,
                  end: LightPinkButtonGradientWithAlignment.endAlignment,
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
      ),
    );
  }
}
