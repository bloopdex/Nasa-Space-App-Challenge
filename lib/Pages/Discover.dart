import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../Constants/MyColors.dart';
import '../Constants/MyImages.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final List<String> phases = [
    '1910 - 1920',
    '1920 - 1930',
    '1930 - 1940',
  ];
  String phaseSelected = '1920-1930';

  final List<String> missionTitle = ['Aura', 'AirMOSS', 'Aqua'];
  final List<String> missionPurpose = [
    'Studying the salt of the sea',
    'Observatory of Subcanopy',
    'Collecting data'
  ];

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
                  const SizedBox(height: 10),
                  const Text(
                    'Discover',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(height: 20),
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
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   width: MediaQuery.of(context).size.width * 0.4,
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  //   child: DropdownButton(
                  //     borderRadius: BorderRadius.circular(10),
                  //     underline: Container(),
                  //     items:
                  //         phases.map<DropdownMenuItem<String>>((String value) {
                  //       return DropdownMenuItem(
                  //         value: value,
                  //         child: Text(value),
                  //       );
                  //     }).toList(),
                  //     onChanged: (String? value) {
                  //       setState(() {
                  //         phaseSelected = value!;
                  //       });
                  //     },
                  //     value: phaseSelected,
                  //   ),
                  // ),
                  SizedBox(
                    height: 500,
                    // padding: const EdgeInsets.only(left: 32),
                    child: Swiper(
                      itemCount: missionTitle.length,
                      itemWidth: MediaQuery.of(context).size.width / 2,
                      itemHeight: 400,
                      layout: SwiperLayout.STACK,
                      pagination: const SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeSize: 20, space: 8),
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(MyImages.DiscoverImages[index],
                                  width: 300),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Text(
                                      missionTitle[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      missionPurpose[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: MyColors.mainColor),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/mission');
                                  },
                                  child: const Center(
                                    child: Text(
                                      'DISCOVER',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
