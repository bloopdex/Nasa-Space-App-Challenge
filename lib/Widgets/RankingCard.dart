import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/MyColors.dart';
import '../Constants/MyImages.dart';

class RankingCard extends StatelessWidget {
  final String name;
  final int points;
  final int rank;
  const RankingCard(
      {Key? key, required this.name, required this.points, required this.rank})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              border: Border.all(color: MyColors.secondColor, width: 2),
              color: MyColors.blue,
            ),
            child: SvgPicture.asset(
              MyImages.register,
              height: 20,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text('$points points',
                  style: const TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
          Expanded(child: Container()),
          Text('#$rank',
              style: const TextStyle(
                  color: MyColors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 40)),
        ],
      ),
    );
  }
}
