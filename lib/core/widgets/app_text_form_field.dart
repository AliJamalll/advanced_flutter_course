import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_project_omar/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatefulWidget {
  AppTextFormField(
      {super.key,
      required this.type,
      required this.text,
      required this.controller,
      this.suffixIcon,
      this.priffixIcon,
      this.isSecure = false,
      this.validator
      });

  bool isSecure;
  Icon? priffixIcon;
  Icon? suffixIcon;
  TextEditingController controller;
  TextInputType type;
  String text;
  final String? Function(String?)? validator;


  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool isPasswordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPasswordVisible = !widget.isSecure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.type,
      decoration: InputDecoration(
        isDense: true,
        fillColor: ColorsManager.whiteFormField,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManager.lightGray, width: 1.3),
        ),
        hintText: widget.text,
        hintStyle: TextStyles.font14LightGrayRegular,
        suffixIcon: widget.isSecure
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: Icon(
                  isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: ColorsManager.mainBlue,
                ),
              )
            : widget.suffixIcon,
        prefixIcon: widget.priffixIcon,
      ),
      obscureText: widget.isSecure && !isPasswordVisible,
      style: TextStyles.font14darkBlueMedium,
    );
  }
}
