import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:earth_mission/Widgets/homeCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Discover',
      'Missions',
      'Profile',
    ];
    final List<Color> colors = [
      MyColors.secondColor,
      MyColors.blue,
      MyColors.yellow,
    ];
    final List<String> destination = [
      '/discover',
      '/mission',
      '/profile',
    ];
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MyColors.mainColor,
          leading: IconButton(
            icon: Transform.scale(scaleX: -1, child: const Icon(Icons.logout)),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signIn');
            },
          ),
          actions: [
            Row(
              children: const [
                Image(
                  image: Svg(MyImages.points),
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '0',
                  style: TextStyle(
                      color: MyColors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Hello Rami',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome to your amazing adventure',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  HomeCard(
                      image: MyImages.HomeImages[0],
                      title: titles[0],
                      color: colors[0],
                      destination: destination[0]),
                  const SizedBox(
                    height: 40,
                  ),
                  HomeCard(
                    image: MyImages.HomeImages[1],
                    title: titles[1],
                    color: colors[1],
                    destination: destination[1],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  HomeCard(
                    image: MyImages.HomeImages[2],
                    title: titles[2],
                    color: colors[2],
                    destination: destination[2],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
