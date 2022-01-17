import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DailyPracticeSelectionWidget extends StatelessWidget {
  final String practiceLength;
  final int wordCount;
  final Color color;
  final double percent;
  final bool isSelected;
  final bool isPremium;

  final VoidCallback onTap;

  const DailyPracticeSelectionWidget({
    Key? key,
    required this.practiceLength,
    required this.wordCount,
    required this.color,
    required this.percent,
    required this.onTap,
    this.isSelected = false,
    this.isPremium = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            // width: 343,
            height: 68,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white12 : null,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color(0xFF8F9BB3).withOpacity(1.0),
                      ),
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.05),
                        Color(0xFFC4C4C4).withOpacity(0.02)
                      ])),
                  child: Align(
                    child: Container(
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(16.0),
                        shape: BoxShape.circle,
                        color: isSelected ? color : null,
                        border: Border.all(
                          color: Color(0xFF8F9BB3).withOpacity(1.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            practiceLength,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            '$wordCount Words',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.0,
                                color: Colors.white70),
                          ),
                          const Spacer(),
                          if (isPremium)
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.orangeAccent[400],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0),
                                    children: [
                                  TextSpan(text: 'Premium'),
                                  WidgetSpan(
                                      child: Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent[400],
                                    size: 12,
                                  ))
                                ])),
                        ],
                      ),
                      LinearPercentIndicator(
                        percent: percent,
                        // width: context.size?.width,
                        lineHeight: 9.0,
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        progressColor: color,
                        backgroundColor: Color(0xFFC4C4C4).withOpacity(0.32),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
