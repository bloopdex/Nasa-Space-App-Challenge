import 'package:earth_mission/Widgets/NextCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/MyColors.dart';
import '../Constants/MyImages.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        title: const Text(
          'Store',
          style: TextStyle(fontSize: 20, color: Colors.white),
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
      body: Stack(
        children: [
          MyImages.backgroundImage,
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      border: Border.all(color: MyColors.secondColor, width: 5),
                      color: MyColors.blue,
                    ),
                    child: SvgPicture.asset(MyImages.register, width: 150),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Rami',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 50,
                ),
                const NextCard(
                    text: 'Store',
                    destination: '/store',
                    color: MyColors.secondColor,
                    icon: Icon(Icons.store)),
                const SizedBox(
                  height: 20,
                ),
                const NextCard(
                    text: 'Ranking',
                    destination: '/ranking',
                    color: MyColors.blue,
                    icon: Icon(Icons.bar_chart)),
                const SizedBox(height: 20),
                const NextCard(
                    text: 'Badges',
                    destination: '/badges',
                    color: Colors.yellow,
                    icon: Icon(Icons.badge_outlined)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
