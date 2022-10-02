import 'package:earth_mission/Constants/MyImages.dart';
import 'package:earth_mission/Widgets/RankingCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../Constants/MyColors.dart';

class Ranking extends StatelessWidget {
  const Ranking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> names = ['Yasser', 'Bounadem', 'Rania', 'Ayoub', 'Miko'];
    final List<int> points = [100, 200, 300, 400, 500];

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
          'Ranking',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          MyImages.backgroundImage,
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircularPercentIndicator(
                      radius: 70,
                      percent: 0.4,
                      center: Container(
                        width: 130,
                        height: 130,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: MyColors.blue,
                        ),
                        child: SvgPicture.asset(MyImages.register, width: 150),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                            fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          const Text('2',
                              style: TextStyle(
                                  fontFamily: 'Kid Game',
                                  color: MyColors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(MyImages.register, width: 90),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nada',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(MyImages.points,
                                        width: 20),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    const Text(
                                      '100',
                                      style: TextStyle(
                                          color: MyColors.yellow,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text('1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Kid Game',
                                  color: MyColors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35)),
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(MyImages.miko, width: 150),
                          Container(
                            width: 130,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Miko',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(MyImages.points,
                                        width: 20),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    const Text(
                                      '150',
                                      style: TextStyle(
                                          color: MyColors.yellow,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          const Text('3',
                              style: TextStyle(
                                  fontFamily: 'Kid Game',
                                  color: MyColors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(MyImages.register, width: 90),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Rami',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(MyImages.points,
                                        width: 20),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    const Text(
                                      '90',
                                      style: TextStyle(
                                          color: MyColors.yellow,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 5,
                    separatorBuilder: (context, index) => Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return RankingCard(
                          name: names[index],
                          points: points[index],
                          rank: index + 4);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
