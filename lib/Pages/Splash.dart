import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:earth_mission/Widgets/NextCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            SvgPicture.asset(
              MyImages.splash,
              width: MediaQuery.of(context).size.width - 100,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Wanna Start Discovering the NASA Missions?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Generated 1 paragraph, 5 words, 27 bytes of Lorem Ipsum, Generated 1 paragraph, 5 words ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const NextCard(
                  text: "Start Now",
                  destination: '/signUp',
                  color: MyColors.mainColor,
                  icon: Icon(Icons.arrow_forward)),
            )
          ],
        ),
      ),
    );
  }
}
