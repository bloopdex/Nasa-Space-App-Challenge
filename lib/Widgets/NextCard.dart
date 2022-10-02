import 'package:flutter/material.dart';

class NextCard extends StatelessWidget {
  final String text;
  final Color color;
  final String destination;
  final Icon icon;
  const NextCard(
      {Key? key,
      required this.text,
      required this.destination,
      required this.color,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, destination);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Icon(
                    icon.icon,
                    color: color,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
