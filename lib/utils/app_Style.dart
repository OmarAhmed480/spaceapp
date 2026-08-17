import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_color.dart';

class AppStyle {
  AppStyle._();

  static const TextStyle bold16whiteColor = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );

  static const TextStyle bold48whiteColor = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );
  static const TextStyle semibold20whiteColor = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
  static TextStyle bold24whiteColor = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 24.sp,
    fontWeight: .w700,
  );
  static TextStyle light16whiteColor = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.sp,
    fontWeight: .w300,
  );
}
