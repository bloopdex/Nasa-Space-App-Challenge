import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Pages/Home.dart';
import 'package:earth_mission/Pages/Splash.dart';
import 'package:earth_mission/Pages/QuestionPopup.dart';
import 'package:flutter/material.dart';

import 'Models/quizModel.dart';
import 'Pages/Budges.dart';
import 'Pages/Congrats.dart';
import 'Pages/Discover.dart';
import 'Pages/Loading.dart';
import 'Pages/Login.dart';
import 'Pages/MissionDescreption.dart';
import 'Pages/Missions.dart';
import 'Pages/Profile.dart';
import 'Pages/Quiz.dart';
import 'Pages/Ranking.dart';
import 'Pages/Register.dart';
import 'Pages/Store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => const Congrats(),
        // '/': (context) => Quiz(
        //       quizNumber: 2,
        //       quiz: QuizModel(
        //           question: 'What is the capital of France?',
        //           answers: ['Paris', 'London', 'Berlin'],
        //           correctAnswer: 1),
        //     ),
        '/': (context) => const Loading(),
        '/splash': (context) => const Splash(),
        '/signIn': (context) => const Login(),
        '/signUp': (context) => const Register(),
        '/home': (context) => const Home(),
        '/mission': (context) => const Missions(),
        '/discover': (context) => const Discover(),
        '/questionPopUp': (context) => const QuestionPopup(),
        '/quiz': (context) => Quiz(
            quizNumber: 2,
            quiz: QuizModel(
                question:
                    'Which mission of NASA brought the first human to moon?',
                answers: ['Artemis', 'Bloop', 'Suka'],
                correctAnswer: 1)),
        '/profile': (context) => const Profile(),
        '/missionDescription': (context) => const MissionDescription(),
        '/store': (context) => const Store(),
        '/congrats': (context) => const Congrats(),
        '/badges': (context) => const Badges(),
        '/ranking': (context) => const Ranking(),
      },
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: MyColors.secondColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: MyColors.secondColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: MyColors.mainColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: MyColors.mainColor),
          ),
        ),
        buttonTheme: const ButtonThemeData(
            buttonColor: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
    );
  }
}
