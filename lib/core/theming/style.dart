import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24Black700weight = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24.sp,
      color: Colors.black
  );

  static TextStyle font32blueBold = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 32.sp,
      color: ColorsManager.mainBlue
  );

  static TextStyle font13GrayRegular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: ColorsManager.gray
  );

  static TextStyle font16whiteSemiBold = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      color: Colors.white
  );
}