import 'package:flutter/material.dart';
import 'package:flutter_bloc_journey/cons/colors.dart';
import 'package:flutter_bloc_journey/views/widgets/custom_button.dart';
import 'package:flutter_bloc_journey/views/widgets/custom_text.dart';

class InternetException extends StatelessWidget {
  final VoidCallback onTap;

  const InternetException({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
        Icon(Icons.cloud_off, color: AppColors.red, size: 50),
        CustomText(
          paddingLeft: 12,
          paddingRight: 12,
          text:
              'We\'re unable to show results.Please check your internet connection',
          fontSize: 12,
          textColor: AppColors.red,
          isTextOverFlow: false,
          textAlign: TextAlign.center,
        ),
        CustomButton(
          width: MediaQuery.sizeOf(context).width*0.4,
            title: 'Retry', onTap: onTap),
      ],
    );
  }
}
