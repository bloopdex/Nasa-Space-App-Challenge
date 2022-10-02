import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:earth_mission/Widgets/NextCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Congrats extends StatelessWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                size: 20,
                color: Colors.white,
              )),
          backgroundColor: MyColors.secondColor,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 20,
                ))
          ]),
      body: Stack(
        children: [
          MyImages.redBackground,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Congratulations!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'Well done, you have completed this mission successfully. Your rocked is lunched',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  MyImages.congrat,
                  width: MediaQuery.of(context).size.width - 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '+ 20',
                      style: TextStyle(
                          fontFamily: 'Kid Game',
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      MyImages.points,
                      width: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const NextCard(
                  text: 'Go To Next Mission',
                  destination: '/discover',
                  color: MyColors.mainColor,
                  icon: Icon(Icons.arrow_forward),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
