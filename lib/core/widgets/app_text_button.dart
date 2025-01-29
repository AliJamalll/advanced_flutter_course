import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_project_omar/core/theming/style.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key,required this.text,required this.onPressed});

  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          backgroundColor: ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
            style: TextStyles.font16whiteSemiBold,
            ),
          ],
        )
    );
  }
}
