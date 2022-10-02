import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:earth_mission/Models/quizModel.dart';
import 'package:earth_mission/Widgets/AnswerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets/QuestionCard.dart';

class Quiz extends StatelessWidget {
  final int quizNumber;
  final QuizModel quiz;
  const Quiz({Key? key, required this.quizNumber, required this.quiz})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> alphabets = ['A', 'B', 'C'];
    final List<String> answers = quiz.answers;
    int selectecAnswer;

    return Scaffold(
      backgroundColor: MyColors.mainColor,
      appBar: AppBar(
        backgroundColor: MyColors.mainColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        title: Text(
          '$quizNumber/10',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(children: [
        MyImages.backgroundImage,
        SizedBox(
          height: 50,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 15,
                color: const Color(0xffD1D1D6),
              ),
              Container(
                height: 15,
                margin: const EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width * quizNumber / 10,
                color: MyColors.secondColor,
              ),
              Positioned(
                  top: -8,
                  left:
                      MediaQuery.of(context).size.width * quizNumber / 10 - 40,
                  child: SvgPicture.asset(
                    MyImages.rocket,
                    height: 40,
                  ))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  child: QuestionCard(question: quiz.question),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Image.asset(MyImages.questionCard1),
                    ],
                  ),
                )
              ]),
              const SizedBox(height: 70),
              Column(
                children: [
                  InkWell(
                    child: AnswerCard(
                        selected: false,
                        qstAlphabet: alphabets[0],
                        question: quiz.answers[0],
                        rightAnswer: quiz.correctAnswer == 1),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AnswerCard(
                      selected: false,
                      qstAlphabet: alphabets[1],
                      question: quiz.answers[1],
                      rightAnswer: quiz.correctAnswer == 2),
                  const SizedBox(
                    height: 40,
                  ),
                  AnswerCard(
                      selected: false,
                      qstAlphabet: alphabets[2],
                      question: quiz.answers[2],
                      rightAnswer: quiz.correctAnswer == 3),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
