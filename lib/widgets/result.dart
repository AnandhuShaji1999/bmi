import 'package:flutter/material.dart';

class Resultpage extends StatefulWidget {
  const Resultpage({super.key, required this.bmi});
  final double bmi;

  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI RESULT IS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              widget.bmi.toStringAsFixed(2),
              style: TextStyle(
                  fontSize: 40,
                  color: (widget.bmi > 18 && widget.bmi < 30)
                      ? Colors.green
                      : Colors.red),
            ),
            (widget.bmi > 18 && widget.bmi < 30)
                ? Text('Your Are Healthy')
                : Text('You are Un Healthy')
          ],
        ),
      ),
    );
  }
}
