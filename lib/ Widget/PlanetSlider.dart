import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/Functions/PlanetNavigationController.dart';
import 'package:spaceapp/model/Planet.dart';
import 'package:spaceapp/utils/app_Style.dart';
import 'package:spaceapp/utils/app_color.dart';

class PlanetSlider extends StatefulWidget {
  final PageController pageController;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  PlanetSlider({
    super.key,
    required this.currentIndex,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  State<PlanetSlider> createState() => _PlanetSliderState();
}

class _PlanetSliderState extends State<PlanetSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 339.h,
          width: 342.w,
          child: PageView.builder(
            onPageChanged: widget.onPageChanged,
            controller: widget.pageController,
            itemCount: Planet.planets.length,
            itemBuilder: (context, index) =>
                Image.asset(Planet.planets[index].pngImage, fit: BoxFit.fill),
          ),
        ),
        SizedBox(height: 24.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: AppColors.redColor,
              ),
              onPressed: () {
                PlanetNavigationController.previousPlanet(
                  pageController: widget.pageController,
                  currentIndex: widget.currentIndex,
                );
              },
              child: Icon(
                Icons.arrow_back,
                size: 25.sp,
                color: AppColors.whiteColor,
              ),
            ),
            Text(
              Planet.planets[widget.currentIndex].planetName,
              style: AppStyle.bold24whiteColor,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: AppColors.redColor,
              ),
              onPressed: () {
                PlanetNavigationController.nextPlanet(
                  pageController: widget.pageController,
                  currentIndex: widget.currentIndex,
                );
              },
              child: Icon(
                Icons.arrow_forward,
                size: 25.sp,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
