import 'package:compitition_team_2/calculator.dart';
import 'package:compitition_team_2/exercise.dart';
import 'package:compitition_team_2/home.dart';
import 'package:flutter/material.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int indx = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const ExerciseScreen(),
    const CalculatorScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "SLOGAN",
            style: TextStyle(
                color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
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
          backgroundColor: Colors.black,
          iconSize: 36,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_sharp),
              label: "Daily Exercises",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined),
              label: "Calorie Calaculator",
            ),
          ],
        ),
        drawer: const Drawer(
            backgroundColor: Colors.black,
            child: Center(
              child: Image(
                image: AssetImage("assets/easyLearn.jpg"),
              ),
            )),
        body: screens[indx]);
  }
}
