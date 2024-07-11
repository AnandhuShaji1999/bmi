import 'package:flutter/material.dart';

class Agetype extends StatefulWidget {
  final TextEditingController Agecontroller;
  const Agetype({super.key, required this.Agecontroller});

  @override
  State<Agetype> createState() => _AgetypeState();
}

class _AgetypeState extends State<Agetype> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: TextField(
        controller:widget.Agecontroller,
        style: TextStyle(
            color: Colors.red[400], fontSize: 20, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.amber[400],
            hintText: 'Age?',
            hintStyle: TextStyle(fontSize: 20),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
               widget. Agecontroller.clear();
              },
            )),
      ),
    );
  }
}
