import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Widgets/NextCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/MyImages.dart';

class Missions extends StatelessWidget {
  const Missions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mainColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              SvgPicture.asset(MyImages.points, width: 20),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '0',
                style: TextStyle(
                    color: MyColors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            MyImages.backgroundImage,
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Mission',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: const TextSpan(
                        text:
                            'Discover the amazing Earth Observations Missions by',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' NASA',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      MyImages.missions,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const NextCard(
                    text: 'Start Your Mission',
                    destination: '/missionDescription',
                    color: MyColors.secondColor,
                    icon: Icon(Icons.navigate_next),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
