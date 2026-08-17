import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/%20Widget/PlanetDetailsContent.dart';
import 'package:spaceapp/model/Planet.dart';
import 'package:spaceapp/utils/app_Style.dart';
import 'package:spaceapp/utils/app_assets.dart';
import 'package:spaceapp/utils/app_color.dart';

class PlanetDetails extends StatefulWidget {
  PlanetDetails({super.key});

  @override
  State<PlanetDetails> createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails> {
  late Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,

      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(AppAssets.rectangle, fit: BoxFit.cover),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color(0xff0E0E0E).withValues(alpha: 0.6),
                            Color(0xff0E0E0E),
                          ],
                          stops: [0.0, 0.5, 1.0],
                        ),
                      ),
                      child: SafeArea(
                        child: Column(
                          children: [
                            Row(
                              spacing: 50.w,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    shape: CircleBorder(),
                                    backgroundColor: AppColors.redColor,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_rounded,
                                    size: 25.sp,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                                Text(
                                  "Explore",
                                  style: AppStyle.bold24whiteColor,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
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
                ],
              ),
              PlanetDetailsContent(planet: planet),
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }
}
