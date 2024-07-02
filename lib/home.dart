import 'dart:async';
import 'package:compitition_team_2/constants/app_colors.dart';
import 'package:compitition_team_2/constants/app_text_styles.dart';
import 'package:compitition_team_2/model/exercise.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final List<TodayExercises> todEx;
  const HomeScreen({super.key, this.todEx = const []});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/Motivate 1.jpg",
    "assets/Motivate 2.jpg",
    "assets/Motivate 3.jpg",
    "assets/Motivate 4.jpg",
    "assets/Motivate 5.jpg",
    "assets/Motivate 6.jpg",
    "assets/Motivate 7.jpg",
    "assets/Motivate 8.jpg",
    "assets/Motivate 9.jpg",
    "assets/Motivate 10.jpg",
  ];

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex == images.length - 1 ? currentIndex = 0 : currentIndex++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: screenWidth,
              height: screenHeigh / 3,
              child: Image.asset(
                images[currentIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: AppColors.greenColor,
                width: screenWidth,
                height: screenHeigh / 3,
                child: (widget.todEx.isNotEmpty)
                    ? ListView.builder(
                        itemCount: widget.todEx.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: Key(widget.todEx[index].name),
                            onDismissed: (direction) {
                              setState(() {
                                widget.todEx.removeAt(index);
                              });
                            },
                            background: Container(
                              alignment: Alignment.center,
                              color: Colors.red,
                              child: Text(
                                "Delete the exersice",
                                style: AppTextStyles.txtBlackBold
                                    .copyWith(fontSize: 26.0),
                              ),
                            ),
                            child: ListTile(
                              title: Text(
                                widget.todEx[index].name,
                                style: AppTextStyles.txtBlackBold
                                    .copyWith(fontSize: 24.0),
                              ),
                              subtitle: Text(
                                widget.todEx[index].date,
                                style: AppTextStyles.txtBlackBold
                                    .copyWith(color: const Color(0xFF575757)),
                              ),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    widget.todEx[index].status =
                                        widget.todEx[index].status == "Pending"
                                            ? "Completed"
                                            : "Pending";
                                  });
                                },
                                child: Text(widget.todEx[index].status,
                                    style: (widget.todEx[index].status ==
                                            "Pending")
                                        ? AppTextStyles.txtGreenBold
                                        : AppTextStyles.txtWhiteBold),
                              ),
                            ),
                          );
                        },
                      )
                    : Center(
                        child: Text(
                          "No Training Time Now!",
                          style:
                              AppTextStyles.txtWhite.copyWith(fontSize: 26.0),
                        ),
                      ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
