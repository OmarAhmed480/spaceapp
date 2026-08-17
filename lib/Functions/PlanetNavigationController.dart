import 'package:flutter/material.dart';
import 'package:spaceapp/model/Planet.dart';

class PlanetNavigationController {
  static void nextPlanet({
    required PageController pageController,
    required int currentIndex,
  }) {
    if (currentIndex < Planet.planets.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  static void previousPlanet({
    required PageController pageController,
    required int currentIndex,
  }) {
    if (currentIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
