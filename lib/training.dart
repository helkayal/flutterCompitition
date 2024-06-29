import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  final List<String> trainings;
  const TrainingScreen({super.key, required this.trainings});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: trainings.length,
        itemBuilder: (context, index) {
          final training = trainings[index];
          return Image.asset(
            training[index],
            width: screenWidth,
            height: screenHeigh / 4,
          );
        },
      ),
    );
  }
}
