import 'package:flutter/material.dart';

class Homeprofile extends StatefulWidget {
  const Homeprofile({super.key});

  @override
  State<Homeprofile> createState() => _HomeprofileState();
}

class _HomeprofileState extends State<Homeprofile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'BMI',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'CALCULATOR',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.all(Radius.circular(200)),
          //   child: Image.asset(
          //     'lib/image/john.jpg',
          //     scale: 14,
          //   ),
          // )
          CircleAvatar(
              radius: 30, backgroundImage: AssetImage('lib/image/john.jpg'))
        ],
      ),
    );
  }
}
