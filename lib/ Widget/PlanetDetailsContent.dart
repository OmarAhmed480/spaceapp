import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/%20Widget/PlanetInfo.dart';
import 'package:spaceapp/model/Planet.dart';
import 'package:spaceapp/utils/app_Style.dart';

class PlanetDetailsContent extends StatelessWidget {
  final Planet planet;

  const PlanetDetailsContent({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset(planet.pngImage, fit: BoxFit.cover)),
        SizedBox(height: 33.h),
        Text("About", style: AppStyle.bold24whiteColor),
        SizedBox(height: 8.h),
        Text(planet.about, style: AppStyle.light16whiteColor),
        SizedBox(height: 8.h),
        Text(planet.title, style: AppStyle.light16whiteColor),
        SizedBox(height: 15.h),
        PlanetInfoRow(
          title: "Distance from Sun (km)",
          value: planet.distanceFromSun.toString(),
        ),
        SizedBox(height: 15.h),
        PlanetInfoRow(
          title: "Orbital Period (Earth years)",
          value: planet.lengthOfDay.toString(),
        ),
        SizedBox(height: 15.h),
        PlanetInfoRow(title: "Radius (km)", value: planet.radius.toString()),
        SizedBox(height: 15.h),
        PlanetInfoRow(title: "Mass (kg)", value: planet.mass.toString()),
        SizedBox(height: 15.h),
        PlanetInfoRow(
          title: "Gravity (m/s²)",
          value: planet.gravity.toString(),
        ),
        SizedBox(height: 15.h),
        PlanetInfoRow(
          title: "Surface Area (km²)",
          value: planet.surfaceArea.toString(),
        ),
      ],
    );
  }
}
