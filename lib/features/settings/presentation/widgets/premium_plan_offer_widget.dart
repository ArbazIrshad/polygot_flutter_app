import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../shared/colors.dart';

class PremiumPlanOfferWidget extends StatelessWidget {
  final String price;
  final String duration;
  final String billingDuration;
  final String? discountOffer;
  final bool isSelected;
  final VoidCallback onTap;

  const PremiumPlanOfferWidget({
    Key? key,
    this.isSelected = false,
    required this.price,
    required this.duration,
    required this.billingDuration,
    this.discountOffer,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: Get.width,
            height: 72,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(4.0),
              border: isSelected
                  ? Border.all(color: goldenYellow2, width: 2.0)
                  : Border.all(
                      color: lightGray15
                      // Color(0xFFC4C4C4).withOpacity(0.15)
                      ,
                    ),
            ),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  // padding: ,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white30)),
                  child: isSelected
                      ? Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: redBlood,
                            ),
                          ),
                        )
                      : null,
                ),
                const SizedBox(
                  width: 14.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$ $price / $duration',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      billingDuration,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        discountOffer != null
            ? Positioned(
                right: 0.0,
                child: Container(
                  width: 64,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: goldenYellow2,
                  ),
                  child: Text(
                    discountOffer ?? '',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
