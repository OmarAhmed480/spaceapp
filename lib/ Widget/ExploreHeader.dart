import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/utils/app_assets.dart';
import 'package:spaceapp/utils/app_Style.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.rectangle, fit: BoxFit.fill),

        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  const Color(0xff0E0E0E).withValues(alpha: 0.6),
                  const Color(0xff0E0E0E),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: REdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text("Explore", style: AppStyle.bold24whiteColor),

                    SizedBox(height: 50.h),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Which planet\nwould you like to explore?",
                        style: AppStyle.bold24whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
