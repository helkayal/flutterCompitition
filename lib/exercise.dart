import 'package:compitition_team_2/constants/app_text_styles.dart';
import 'package:compitition_team_2/model/exercise.dart';
import 'package:compitition_team_2/training.dart';
import 'package:flutter/material.dart';

class ExerciseScreen extends StatefulWidget {
  final Function(TodayExercises) onItemAdded;
  const ExerciseScreen({super.key, required this.onItemAdded});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  final List<Exercise> exercises = Exercise.getExercises();
  final exerciseController = TextEditingController();
  final dateController = TextEditingController();

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Add New Exercise Today ",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontFamily: "assets/fonts/Space_Mono/OFL.txt"),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: const Color(0xff0b0812),
                          title: const Text(
                            "Add new exercise today",
                            style: AppTextStyles.txtGreen,
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                style: const TextStyle(color: Colors.grey),
                                controller: exerciseController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    labelText: "Exercise",
                                    labelStyle:
                                        const TextStyle(color: Colors.grey)),
                              ),
                              const SizedBox(height: 16.0),
                              TextField(
                                style: const TextStyle(color: Colors.grey),
                                controller: dateController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    labelText: "Date",
                                    labelStyle:
                                        const TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                          actions: [
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green),
                                onPressed: () {
                                  final ex = exerciseController.text;
                                  final dt = dateController.text;
                                  final newItem = TodayExercises(
                                      name: ex, date: dt, status: "Pending");
                                  widget.onItemAdded(newItem);
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "Add",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/add.gif",
                    ),
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
                            style: AppTextStyles.txtWhiteBold,
                          ),
                          Text(
                            exercise.trainings.length.toString(),
                            style: AppTextStyles.txtWhiteBold,
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
