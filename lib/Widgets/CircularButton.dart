// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CirclularButton extends StatelessWidget {
  final IconData iconButton;
  final void Function() buttonClick;
  final Color iconcolor=Colors.white;
  CirclularButton({required this.iconButton,required this.buttonClick});
  

  @override
  Widget build(BuildContext context) {
    return  Container(margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconcolor,
                ),
                child: IconButton(
                    onPressed: buttonClick,
                    icon: Icon(
                      iconButton,
                    )));
  }
}