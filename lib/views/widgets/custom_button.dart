import 'package:flutter/material.dart';
import 'package:flutter_bloc_journey/cons/colors.dart';
import 'package:flutter_bloc_journey/views/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback onTap;
  final double height, width;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 46,
    this.width = double.infinity,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 16,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.green,
        ),
        child: Center(
          child: CustomText(
            text: title,
            textColor: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
