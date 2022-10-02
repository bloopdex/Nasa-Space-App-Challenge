import 'package:earth_mission/Constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/MyImages.dart';

class CharacterCard extends StatelessWidget {
  final String img;
  final double price;
  final bool obtained;
  final bool selected;
  const CharacterCard(
      {Key? key,
      required this.img,
      required this.price,
      required this.obtained,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: MyColors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SvgPicture.asset(
                    img,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: MyColors.yellow,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Center(
                      child: obtained
                          ? const Text(
                              'Obtained',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(MyImages.points, width: 20),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  price.toInt().toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            )),
                )
              ],
            ),
          ),
          obtained
              ? Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: MyColors.yellow, width: 3),
                      borderRadius: BorderRadius.circular(10)),
                )
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: const <double>[0.1, 0.9],
                      colors: <Color>[
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.2)
                      ],
                    ),
                  ),
                  child: const Center(
                      child: Icon(Icons.lock_outline,
                          color: Colors.white, size: 40)),
                )
        ],
      ),
    );
  }
}
