import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionPopup extends StatelessWidget {
  const QuestionPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            MyImages.backgroundImage,
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(MyImages.questionPopup,
                      width: MediaQuery.of(context).size.width * 0.35),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'Hello Astronaut We got a problem to solve!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        color: MyColors.secondColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/quiz');
                      },
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: const Text(
                            'Solve It Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
