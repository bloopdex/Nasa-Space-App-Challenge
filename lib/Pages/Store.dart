import 'package:earth_mission/Widgets/CharacterCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/MyColors.dart';
import '../Constants/MyImages.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> img = [
      MyImages.HomeImages[0],
      MyImages.HomeImages[1],
      MyImages.HomeImages[2],
      MyImages.HomeImages[0],
      MyImages.HomeImages[1],
      MyImages.HomeImages[2],
      MyImages.HomeImages[0],
      MyImages.HomeImages[1],
    ];
    final List<double> prices = [100, 200, 300, 400, 500, 600, 700, 800];
    final List<bool> obtained = [
      true,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ];
    int selected = 0;
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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => CharacterCard(
                    img: img[index],
                    price: prices[index],
                    obtained: obtained[index],
                    selected: index == selected,
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
