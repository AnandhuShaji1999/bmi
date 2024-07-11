import 'package:bmi_calculator/pages/bmihome/calculation.dart';
import 'package:bmi_calculator/pages/bmihome/homprofile.dart';
import 'package:flutter/material.dart';

class Bmi_home extends StatefulWidget {
  const Bmi_home({super.key});

  @override
  State<Bmi_home> createState() => _Bmi_homeState();
}

class _Bmi_homeState extends State<Bmi_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const Column(
            children: [
              Homeprofile(),
              Bmical(),
            ],
          ),
        ),
      )),
    );
  }
}
