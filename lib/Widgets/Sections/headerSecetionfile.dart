// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeaderSectionButtons extends StatelessWidget {
  final Widget  buttonOne;
  final Widget  buttonTwo;
 final Widget  buttonThree;

 HeaderSectionButtons({required this.buttonOne,required this.buttonTwo,required this.buttonThree});
 

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [buttonOne,
            VerticalDivider(thickness: 1,),buttonTwo,
            VerticalDivider(thickness: 1,),buttonThree
            
                
                
          ],
        ));
  }
}
