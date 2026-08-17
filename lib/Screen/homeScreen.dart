import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spaceapp/%20Widget/ExploreHeader.dart';
import 'package:spaceapp/%20Widget/PlanetSlider.dart';
import 'package:spaceapp/%20Widget/generalbutton.dart';
import 'package:spaceapp/model/Planet.dart';
import 'package:spaceapp/utils/app_Style.dart';
import 'package:spaceapp/utils/app_color.dart';
import 'package:spaceapp/utils/app_route.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int index = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          ExploreHeader(),
          PlanetSlider(
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
            pageController: pageController,
            currentIndex: index,
          ),
          SizedBox(height: 30.h),
          GeneralButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoute.detailsRouteName,
                arguments: Planet.planets[index],
              );
            },
            buttonWidth: 342.w,
            height: 60.h,
            backgroundColor: AppColors.redColor,
            radiusCircular: 50.r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Explore  ${Planet.planets[index].planetName}",
                  style: AppStyle.semibold20whiteColor,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.whiteColor,
                  size: 25.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
