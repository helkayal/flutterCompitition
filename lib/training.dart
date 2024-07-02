import 'package:compitition_team_2/constants/app_colors.dart';
import 'package:compitition_team_2/constants/app_text_styles.dart';
import 'package:compitition_team_2/model/exercise.dart';
import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  final List<ExerciseTranings> trainings;

  const TrainingScreen({
    super.key,
    required this.trainings,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigh = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.greenColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              child: const Text(
                " << Back  ",
                style: AppTextStyles.txtWhiteBold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: trainings.length,
                itemBuilder: (context, index) {
                  final training = trainings[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          training.desc,
                          style: AppTextStyles.txtGreenBold,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            height: screenHeigh / 2,
                            fit: BoxFit.cover,
                            training.image,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Divider(
                          color: AppColors.whiteColor,
                          height: 1,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
