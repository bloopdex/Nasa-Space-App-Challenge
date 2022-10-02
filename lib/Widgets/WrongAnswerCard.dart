import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WrongAnswer extends StatelessWidget {
  const WrongAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 50,
          right: 0,
          child: SvgPicture.asset(MyImages.wrongAnswer, width: 200)),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Oops! That was wrong',
                  style: TextStyle(
                    color: MyColors.secondColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lectus ac eu viverra tincidunt nec fringilla quam diam. Urna id.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: MyColors.secondColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Center(
                            child: Text(
                              'Try Again',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.restore,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
