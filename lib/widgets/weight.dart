import 'package:flutter/material.dart';

class Weightclass extends StatefulWidget {
  final TextEditingController Weightcontroller;
  const Weightclass({Key? key,  required this.Weightcontroller})
      : super(key: key);

  @override
  _WeightclassState createState() => _WeightclassState();

 
}

class _WeightclassState extends State<Weightclass> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: TextField(
        controller:widget. Weightcontroller,
        style: TextStyle(
            color: Colors.yellow[400],
            fontSize: 20,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.purple[300],
            hintText: 'Weight?',
            hintStyle: TextStyle(fontSize: 20),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
               widget.Weightcontroller.clear();
              },
            )),
      ),
    );
  }
}
