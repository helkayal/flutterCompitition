import 'package:compitition_team_2/constants/app_colors.dart';
import 'package:compitition_team_2/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String> gender = ["Male", "Female"];
  GlobalKey<FormState> field = GlobalKey();
  late int age;
  late double weight;
  late double height;
  double calories = 0;
  String selectedanswer = "";
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
              key: field,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                        style: AppTextStyles.txtWhite,
                        decoration: InputDecoration(
                          label: const Text(
                            "Age",
                            style: AppTextStyles.txtWhite,
                          ),
                          fillColor: AppColors.blackColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor)),
                          hintText: "Age",
                          hintStyle: AppTextStyles.txtWhiteBold,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your age";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          age = int.parse(value!);
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        style: AppTextStyles.txtWhite,
                        decoration: InputDecoration(
                          label: const Text(
                            "Weight in kilo grams",
                            style: AppTextStyles.txtWhite,
                          ),
                          fillColor: Colors.black,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor)),
                          hintText: "Weight in kilo grams",
                          hintStyle: AppTextStyles.txtWhiteBold,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your weight";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          weight = double.parse(value!);
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        style: AppTextStyles.txtWhite,
                        decoration: InputDecoration(
                          label: const Text(
                            "Height in Cm",
                            style: AppTextStyles.txtWhite,
                          ),
                          fillColor: AppColors.blackColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor)),
                          hintText: "height in Cm",
                          hintStyle: AppTextStyles.txtWhiteBold,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your height";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          height = double.parse(value!);
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (var x in gender) femalormale(x),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        if (field.currentState!.validate()) {
                          field.currentState!.save();
                          setState(() {
                            if (selectedanswer == "Male") {
                              calories =
                                  10 * weight + 6.25 * height - 5 * age + 5;
                            } else {
                              calories =
                                  10 * weight + 6.25 * height - 5 * age - 161;
                            }
                          });
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 16,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          "Calculate the calories you nedded in day ",
                          style: AppTextStyles.txtBlackBold
                              .copyWith(fontSize: 15.0),
                        )),
                      ),
                    ),
                    Text(
                      "The Calories you need is ${calories.toStringAsFixed(0)}",
                      style: AppTextStyles.txtWhiteBold,
                    ),
                  ]))
        ],
      ),
    ));
  }

  femalormale(String type) {
    isselected = type == selectedanswer;
    return InkWell(
      onTap: () {
        setState(() {
          selectedanswer = type;
        });
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: isselected ? AppColors.greenColor : AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          type,
          style: AppTextStyles.txtBlackBold,
        )),
      ),
    );
  }
}
