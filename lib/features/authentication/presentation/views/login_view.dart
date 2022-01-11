import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_view.dart';
import '../../../daily_review/presentation/views/daily_review_dialog.dart';
import '../widgets/custom_text_input_form_field.dart';
import '../widgets/or_divider.dart';
import '../../../../shared/widgets/rounded_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
              Color(0xFF5EC5FF),
              Color(0xFF282F54),
              Color(0xFF172155),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 36.0,
            ),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.0,
                  color: Colors.white),
            ),
            Text(
              'Please fill your credentials to continue',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: Colors.white.withOpacity(0.72),
              ),
            ),
            const SizedBox(
              height: 125.0,
            ),
            CustomTextInputFormField(
              width: 344.0,
              height: 48.0,
              text: 'Username',
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomTextInputFormField(
              text: 'Password',
              width: 344.0,
              height: 48.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xFFF2C94C),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            GradientRoundedButtonWidget(
              buttonText: 'Log-In',
              onpressed: () {
                Get.to(DailyReviewDialog());
              },
              colors: [
                Color(0xFFBAF7FF),
                Color(0xFF0085FF),
              ],
              width: 344,
            ),
            TextButton(
              onPressed: () {
                Get.to(SignupView());
              },
              child: Text(
                'Don\'t have an account yet?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            OrDivider(),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FacebookAuthButton(
                  style: AuthButtonStyle(buttonType: AuthButtonType.icon),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 16.0,
                ),
                AppleAuthButton(
                  style: AuthButtonStyle(
                    buttonType: AuthButtonType.icon,
                    buttonColor: Colors.black,
                    iconColor: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 16.0,
                ),
                GoogleAuthButton(
                  style: AuthButtonStyle(buttonType: AuthButtonType.icon),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
