import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/theming/style.dart';

class CustomTermsAndConditions extends StatelessWidget {
  const CustomTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
            TextSpan(
                text: "By logging, you agree to our ",
                style: TextStyles.font14GrayRegular
            ),
            TextSpan(
                text: " Terms & Conditions ",
                style: TextStyles.font24Black400weight
            ),
            TextSpan(
                text: " and",
                style: TextStyles.font14GrayRegular
            ),
            TextSpan(
                text: " PrivacyPolicy.",
                style: TextStyles.font24Black400weight
            ),
          ]
      ),
    );
  }
}
