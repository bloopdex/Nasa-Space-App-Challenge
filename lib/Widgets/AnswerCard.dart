import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Widgets/RightAnswerCard.dart';
import 'package:earth_mission/Widgets/WrongAnswerCard.dart';
import 'package:flutter/material.dart';

class AnswerCard extends StatefulWidget {
  bool selected;
  final bool rightAnswer;
  final String qstAlphabet;
  final String question;
  AnswerCard({
    Key? key,
    required this.selected,
    required this.qstAlphabet,
    required this.question,
    required this.rightAnswer,
  }) : super(key: key);

  @override
  State<AnswerCard> createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) =>
              widget.rightAnswer ? const RightAnswer() : const WrongAnswer(),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: widget.selected
                ? widget.rightAnswer
                    ? Colors.green
                    : MyColors.secondColor
                : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(2, 2), // changes position of shadow
              ),
            ]),
        child: Row(children: [
          CircleAvatar(
            backgroundColor:
                !widget.selected ? MyColors.secondColor : Colors.white,
            child: Text(
              widget.qstAlphabet,
              style: TextStyle(
                  fontSize: 20,
                  color: widget.selected
                      ? widget.rightAnswer
                          ? Colors.green
                          : Colors.red
                      : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Text(
              widget.question,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ]),
      ),
    );
  }
}
