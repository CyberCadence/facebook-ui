// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      child: Icon(
        Icons.done,
        color: Colors.white,
      ),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
    );
  }
}
