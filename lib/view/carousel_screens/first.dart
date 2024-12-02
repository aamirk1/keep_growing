import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String title;
  final String image;
  const FirstScreen({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 56, 41, 170),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    height: 1),
              ),
            ],
          ),
        ));
  }
}
