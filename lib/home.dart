import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/Motivate 1.jpg"
        "assets/Motivate 2.jpg"
        "assets/Motivate 3.jpg"
        "assets/Motivate 4.jpg"
        "assets/Motivate 5.jpg"
        "assets/Motivate 6.jpg"
        "assets/Motivate 7.jpg"
        "assets/Motivate 8.jpg"
        "assets/Motivate 9.jpg"
        "assets/Motivate 10.jpg"
  ];

  int currentIndex = 0;
  String i = "";

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        currentIndex == images.length - 1
            ? currentIndex == 0
            : currentIndex == currentIndex + 1;
        i = images[currentIndex];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(i)),
                ),
              )),
        ],
      ),
    );
  }
}
