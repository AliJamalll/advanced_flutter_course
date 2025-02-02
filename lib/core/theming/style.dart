import 'package:flutter/material.dart';
import 'package:flutter_project_omar/core/theming/colors.dart';
import 'package:flutter_project_omar/core/theming/font_wieght_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static TextStyle font24Black700weight = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24.sp,
      color: Colors.black
  );

  static TextStyle font24Black400weight = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 15.sp,
      color: Colors.black
  );

  static TextStyle font24BlueBold = TextStyle(
      fontWeight: FontWeightHelper.bold,
      fontSize: 24.sp,
      color: ColorsManager.mainBlue
  );
  static TextStyle font14BlueSemiBold = TextStyle(
      fontWeight: FontWeightHelper.semiBold,
      fontSize: 14.sp,
      color: ColorsManager.mainBlue
  );

  static TextStyle font32blueBold = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 32.sp,
      color: ColorsManager.mainBlue
  );

  static TextStyle font14GrayRegular = TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp,
      color: ColorsManager.gray
  );

  static TextStyle font14LightGrayRegular = TextStyle(
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp,
      color: ColorsManager.lighterGray
  );

  static TextStyle font14darkBlueMedium = TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: 14.sp,
      color: ColorsManager.darkBlue
  );
  static TextStyle font15darkBlueMedium = TextStyle(
      fontWeight: FontWeightHelper.medium,
      fontSize: 15.sp,
      color: ColorsManager.darkBlue
  );

  static TextStyle font13GrayRegular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: ColorsManager.gray
  );

  static TextStyle font13DarkBlueRegular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: ColorsManager.darkBlue
  );

  static TextStyle font13BlueRegular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13.sp,
      color: ColorsManager.mainBlue
  );

  static TextStyle font16whiteSemiBold = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      color: Colors.white
  );
}