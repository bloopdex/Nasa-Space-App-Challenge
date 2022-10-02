import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeCard extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  final String destination;
  const HomeCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.color,
      required this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, destination);
        },
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: Image(
                  image: Svg(image),
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                  child: Center(
                      child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )))
            ],
          ),
        ));
  }
}
