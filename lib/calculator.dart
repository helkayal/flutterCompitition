import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String> gender = ["Male", "Female"];
  GlobalKey<FormState> field = GlobalKey();
  int? age;
  double? weight;
  double? height;
  int calories = 0;
  String? selectedanswer;
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
              key: field,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          label: const Text(
                            "Age",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          fillColor: Colors.black,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.purple)),
                          hintText: "Age",
                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your age";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          age = value! as int?;
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          label: const Text(
                            "Weight in kilo grams",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          fillColor: Colors.black,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.purple)),
                          hintText: "Weight in kilo grams",
                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your weight";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          weight = value as double?;
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          label: const Text(
                            "Height in Cm",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          fillColor: Colors.black,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.purple)),
                          hintText: "height in Cm",
                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your height";
                          }
                          return null;
                        },
                        onSaved: (value) {
                          height = value as double?;
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
                              calories = (10 * weight! +
                                  6.25 * height! -
                                  5 * age! +
                                  5) as int;
                            } else {
                              calories = (10 * weight! +
                                  6.25 * height! -
                                  5 * age! -
                                  161) as int;
                            }
                          });
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 16,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          "Calculate the calories you nedded in day ",
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                    ),
                    Text(
                      "The Calories you need is $calories",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
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
            color: isselected ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          type,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
