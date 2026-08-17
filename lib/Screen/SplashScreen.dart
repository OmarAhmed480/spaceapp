import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/utils/app_Style.dart';
import 'package:spaceapp/utils/app_assets.dart';

import '../ Widget/generalbutton.dart';
import '../utils/app_color.dart';
import '../utils/app_route.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.ac194, fit: BoxFit.fill),
          ),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 228.h),
                const Text(
                  "Explore\nThe\nUniverse",
                  style: AppStyle.bold48whiteColor,
                ),
                SizedBox(height: 237.h),
                GeneralButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).pushReplacementNamed(AppRoute.homeRouteName);
                  },
                  buttonWidth: 342.w,
                  height: 60.h,
                  backgroundColor: AppColors.redColor,
                  radiusCircular: 50.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        " Explore ",
                        style: AppStyle.semibold20whiteColor,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.whiteColor,
                        size: 25.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
