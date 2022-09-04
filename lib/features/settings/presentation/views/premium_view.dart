import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/premium_offer_controller.dart';
import '../widgets/ad_banner_widget.dart';
import '../widgets/gradient_text.dart';
import '../widgets/premium_plan_offer_widget.dart';
import '../../../../shared/colors.dart';
import '../../../../shared/widgets/rounded_button.dart';

class PremiumView extends StatelessWidget {
  const PremiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PremiumOfferController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkBlue,
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 18.0,
                ),
                const Text(
                  'Get Unlimited, Get',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                const GradientText(
                  'Premium Plus',
                  gradient: LinearGradient(
                    colors: [lightPurple, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const AdBannerWidget(
                  mainText: 'No Ad Disturbance',
                  secondText: 'Unlimited Ad free time',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const AdBannerWidget(
                  mainText: 'No Any Deadline Worries',
                  secondText: 'Unlimited and lifetime access',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const AdBannerWidget(
                  mainText: 'Extended Vocabulary',
                  secondText: 'Unlimited Words and challenges',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'and more',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Obx(
                  () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PremiumPlanOfferWidget(
                        price: '9.99',
                        duration: 'month',
                        billingDuration: 'Billed Annualy',
                        discountOffer: '10% Off',
                        isSelected: controller.premiumBox1.value,
                        onTap: () {
                          controller.premiumBox1.value = true;
                          controller.premiumBox2.value = false;
                        },
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      PremiumPlanOfferWidget(
                        price: '11.99',
                        duration: 'month',
                        billingDuration: 'Billed Annualy',
                        isSelected: controller.premiumBox2.value,
                        onTap: () {
                          controller.premiumBox2.value = true;
                          controller.premiumBox1.value = false;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '119.9 / year',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                GradientRoundedButtonWidget(
                  buttonText: 'Continue',
                  width: Get.size.width,
                  onpressed: () {},
                  begin: Alignment(-1.5, -2),
                  end: Alignment(0.85, 2.5),
                  colors: [
                    lightPurple2,
                    lightPurple3,
                    goldenYellow2,
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  'No, Thanks',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
