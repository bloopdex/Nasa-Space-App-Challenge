import 'package:earth_mission/Constants/MyColors.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  const QuestionCard({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: MyColors.secondColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(4, 4), // changes position of shadow
            )
          ]),
      child: Center(
        child: Text(
          question,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
