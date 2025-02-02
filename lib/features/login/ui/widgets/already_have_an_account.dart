import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/helpers/extensions.dart';
import 'package:flutter_project_omar/core/routing/routes.dart';
import 'package:flutter_project_omar/core/theming/style.dart';
import 'package:flutter_project_omar/features/onboarding/on_boarding_screen.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
            TextSpan(
                text: "Already have an account yet? ",
                style: TextStyles.font24Black400weight
            ),
            TextSpan(
                text: " Sign Up",
                style: TextStyles.font13BlueRegular,
              recognizer: TapGestureRecognizer()..onTap = () => context.pushNamed(Routes.onBoarding)
            ),
          ]
      ),
    );
  }
}
