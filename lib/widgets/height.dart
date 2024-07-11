import 'package:flutter/material.dart';

class Heightclass extends StatefulWidget {
   final TextEditingController Heightcontroller;
   const Heightclass({Key? key, required this.Heightcontroller}) : super(key: key);

  @override
  _HeightclassState createState() => _HeightclassState();

 
}

class _HeightclassState extends State<Heightclass> {
  

  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: TextField(
        controller:widget.Heightcontroller,
        style: TextStyle(
            color: Colors.red[400], fontSize: 20, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.amber[400],
            hintText: 'Height?',
            hintStyle: TextStyle(fontSize: 20),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
              widget.Heightcontroller.clear();
              },
            )),
      ),
    );
  }
}
