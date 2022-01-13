import 'package:flutter/material.dart';

class LanguageTypeListItemWidget extends StatelessWidget {
  final bool isSelected;
  final String leadingText;
  final String trailingText;
  final BorderRadius borderRadius;

  const LanguageTypeListItemWidget({
    Key? key,
    required this.isSelected,
    required this.leadingText,
    required this.trailingText,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? const Color(0xFFFFAF75) : const Color(0xFF4F515C),
        ),
        borderRadius: borderRadius,
        // const BorderRadius.vertical(
        //   top: Radius.circular(4.0),
        // ),
      ),
      child: Row(
        children: [
          Text(
            leadingText,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? const Color(0xFFFFAF75)
                    : const Color(0xFF4F515C),
              ),
              gradient: isSelected
                  ? LinearGradient(
                      colors: [
                        Color(0xFFFFAF75),
                        Color(0xFFFBEBA0),
                      ],
                    )
                  : null,
            ),
            child: CircleAvatar(
              child: Text(
                trailingText,
                style: TextStyle(
                    color: isSelected ? Colors.black : const Color(0xFF4F515C),
                    fontSize: 15.0),
              ),
              radius: 18.0,
              backgroundColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
