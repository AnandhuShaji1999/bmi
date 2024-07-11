import 'package:bmi_calculator/widgets/age.dart';
import 'package:bmi_calculator/widgets/height.dart';
import 'package:bmi_calculator/widgets/result.dart';
import 'package:bmi_calculator/widgets/weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bmical extends StatefulWidget {
  const Bmical({super.key});

  @override
  State<Bmical> createState() => _BmicalState();
}

class _BmicalState extends State<Bmical> {
  late TextEditingController weightController;
  late TextEditingController heightController;
  late TextEditingController agecontroller;
  void initState() {
    super.initState();
    weightController = TextEditingController();
    heightController = TextEditingController();
    agecontroller = TextEditingController();
  }

  void CalculateBmi() async {
    double weight = double.parse(weightController.text);
    assert(weight is double);
    double height = double.parse(heightController.text);
    double heightm = height / 100;
    assert(height is double);
    var res = weight / (heightm * heightm);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultpage(bmi: res)));
    weightController.clear();
    heightController.clear();
    agecontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 500,
            width: 150,
            child: Image.asset(
              'lib/image/boy.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Agetype(
                  Agecontroller: agecontroller,
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Heightclass(Heightcontroller: heightController),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Weightclass(
                  Weightcontroller: weightController,
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: CalculateBmi,
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))
                ],
              )
            ],
          )
        ],
      ), //
    );
  }
}
