import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/utils/app_Style.dart';

class PlanetInfoRow extends StatelessWidget {
  final String title;
  final String value;

  const PlanetInfoRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        Text(title, style: AppStyle.bold16whiteColor),
        Text(value, style: AppStyle.bold16whiteColor),
      ],
    );
  }
}
