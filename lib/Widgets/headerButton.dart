 import 'package:flutter/material.dart';

Widget headerButtonFunction(
      {required String iconText,
      required IconData iconn,
      required void Function() buttonClick,
      required Color color}) {
    return Container(
      child: TextButton.icon(
          onPressed: buttonClick, icon: Icon(iconn), 
          label: Text(iconText)),
    );

  }
  