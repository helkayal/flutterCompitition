import 'package:compitition_team_2/calculator.dart';
import 'package:compitition_team_2/constants/app_colors.dart';
import 'package:compitition_team_2/constants/app_text_styles.dart';
import 'package:compitition_team_2/exercise.dart';
import 'package:compitition_team_2/home.dart';
import 'package:compitition_team_2/model/exercise.dart';
import 'package:flutter/material.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int indx = 0;

  List<TodayExercises> items = [];

  void addItem(TodayExercises item) {
    setState(() {
      items.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(todEx: items),
      ExerciseScreen(onItemAdded: addItem),
      const CalculatorScreen(),
    ];

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "SLOGAN",
            style: AppTextStyles.txtGreenBold.copyWith(fontSize: 30.0),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              indx = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: indx,
          showUnselectedLabels: false,
          backgroundColor: AppColors.blackColor,
          iconSize: 36,
          selectedItemColor: AppColors.greenColor,
          unselectedItemColor: AppColors.whiteColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports),
              label: "Daily Exercises",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined),
              label: "Calorie Calaculator",
            ),
          ],
        ),
        drawer: Drawer(
            backgroundColor: AppColors.blackColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.greenColor,
                  radius: 126,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage("assets/easyLearn.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "This app developed by EasyLearn Academy",
                  style: AppTextStyles.txtWhiteBold.copyWith(fontSize: 22.0),
                ),
              ],
            )),
        body: screens[indx]);
  }
}
