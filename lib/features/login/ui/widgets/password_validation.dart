import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/helpers/spacing.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_project_omar/core/theming/style.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialChar;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidation({super.key, required this.hasLowerCase, required this.hasUpperCase, required this.hasSpecialChar, required this.hasNumber, required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter",hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 Uppercase letter",hasUpperCase),
        verticalSpace(2),
        buildValidationRow("At least 1 SpecialChar",hasSpecialChar),
        verticalSpace(2),
        buildValidationRow("At least 1 Number",hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 Char long",hasMinLength),
        verticalSpace(2),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(text,
        style: TextStyles.font13DarkBlueRegular.copyWith(
          decoration: hasValidated? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue
        ),
        )
      ],
    );
  }
}
