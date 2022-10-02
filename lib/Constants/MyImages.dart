import 'package:earth_mission/Constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class MyImages {
  static const String logo = 'assets/images/logo.svg';
  static const String splash = 'assets/images/splash.svg';
  static const String register = 'assets/images/login.svg';
  static const String missions = 'assets/images/missions.svg';
  static const String backgroundStars = 'assets/images/backgroundStars.svg';
  static const String points = 'assets/images/points.svg';
  static const String questionPopup = 'assets/images/questionPopup.svg';
  static const String miko = 'assets/images/miko.svg';
  static const String question = 'assets/images/question.svg';
  static const String rocket = 'assets/images/rocket.svg';
  static const String questionCard1 = 'assets/images/questionCard1.png';
  static const String wrongAnswer = 'assets/images/wrongAnswer.svg';
  static const String congrat = 'assets/images/congrat.png';
  static const String earth = 'assets/images/earth.svg';
  static const String moon = 'assets/images/moon.svg';
  static const String uranus = 'assets/images/uranus.png';
  static Widget backgroundImage = Container(
    decoration: const BoxDecoration(
      color: MyColors.mainColor,
      image: DecorationImage(
        image: Svg(backgroundStars),
        fit: BoxFit.contain,
      ),
    ),
    child: Container(),
  );
  static Widget redBackground = Container(
    decoration: const BoxDecoration(
      color: MyColors.secondColor,
      image: DecorationImage(
        image: Svg(backgroundStars),
        fit: BoxFit.contain,
      ),
    ),
    child: Container(),
  );
  static const List<String> HomeImages = [
    'assets/images/Discover.svg',
    'assets/images/Missions.svg',
    'assets/images/Profile.svg',
  ];

  static const List<String> DisoverImages = [
    'assets/images/mission-3.png',
    'assets/images/mission-1.png',
    'assets/images/mission-2.png',
  ];
}
