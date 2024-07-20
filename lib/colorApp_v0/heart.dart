import 'package:flutter/material.dart';
import 'dart:math';

class Heart extends StatefulWidget {
  const Heart({super.key});
  @ override
  State<Heart> createState() {
    return _HeartState();
  }
}

class _HeartState extends State<Heart> {
  Color heartColor = Colors.pink;

  void updateColor() {
    final random = Random();
    final int min = 1;
    final int max = 255;
    setState(() {
      heartColor = Color.fromARGB(min + random.nextInt(max - min + 1), min + random.nextInt(max - min + 1), min + random.nextInt(max - min + 1), min + random.nextInt(max - min + 1));
    });
  }

  @ override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.favorite,
          color: heartColor,
        ),
        ElevatedButton(onPressed: updateColor, child: Text("Change the colour"))
      ],
    );
  }

}

