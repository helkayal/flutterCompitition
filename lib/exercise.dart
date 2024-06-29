import 'package:compitition_team_2/model/exercise.dart';
import 'package:compitition_team_2/training.dart';
import 'package:flutter/material.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  final List<Exercise> exercises = [
    Exercise(name: 'Back', imagePath: 'assets/Back/main.png', trainings: [
      "assets/Back/1.gif",
      "assets/Back/2.gif",
      "assets/Back/3.gif",
      "assets/Back/4.gif",
      "assets/Back/5.gif",
      "assets/Back/6.gif",
    ]),
    Exercise(name: 'Biceps', imagePath: 'assets/Biceps/main.jpg', trainings: [
      "assets/Biceps/1.gif",
      "assets/Biceps/2.gif",
      "assets/Biceps/3.gif",
      "assets/Biceps/4.gif",
      "assets/Biceps/5.gif",
      "assets/Biceps/6.gif",
      "assets/Biceps/7.gif",
      "assets/Biceps/8.gif"
    ]),
    Exercise(name: 'Chest', imagePath: 'assets/chest/main1.jpg', trainings: [
      "assets/chest/1.gif",
      "assets/chest/2.gif",
      "assets/chest/3.gif",
      "assets/chest/4.gif",
      "assets/chest/5.gif",
      "assets/chest/6.gif",
      "assets/chest/7.gif",
      "assets/chest/8.gif",
    ]),
    Exercise(name: 'Legs', imagePath: 'assets/legs/main.jpeg', trainings: [
      "assets/legs/1.gif",
      "assets/legs/2.gif",
      "assets/legs/3.gif",
      "assets/legs/4.gif",
      "assets/legs/5.gif",
      "assets/legs/6.gif",
      "assets/legs/7.gif",
      "assets/legs/8.gif",
    ]),
    Exercise(
        name: 'Shoulder',
        imagePath: 'assets/shoulder/main.jpg',
        trainings: [
          "assets/shoulder/1.gif",
          "assets/shoulder/2.gif",
          "assets/shoulder/3.gif",
          "assets/shoulder/4.gif",
          "assets/shoulder/5.gif",
          "assets/shoulder/6.gif",
          "assets/shoulder/7.gif",
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeigh / 6,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Add New Exercise Today ",
                  style: TextStyle(fontSize: 24),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    "assets/add.gif",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                final exercise = exercises[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrainingScreen(
                          trainings: exercise.trainings,
                        ),
                      ),
                    );
                  },
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(exercise.imagePath,
                            width: screenWidth,
                            height: screenHeigh / 6,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: screenWidth,
                      color: Colors.black.withOpacity(0.5),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '${exercise.name} Exercise',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            exercise.trainings.length.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
