// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:worksheet_class/Widgets/CircularButton.dart';
import 'package:worksheet_class/Widgets/imageAvatar.dart';

class storyCard extends StatelessWidget {
  final String storyText;
  final String storyimage;
  // final IconData showicon;
  final bool isshowicon;
  final String storyavatar;

  storyCard(
      {required this.storyText,
      required this.storyimage,
      this.isshowicon = false,
      required this.storyavatar});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(storyimage),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
          Positioned(
              child: isshowicon
                  ? CirclularButton(
                      iconButton: Icons.add,
                      buttonClick: () {},
                    )
                  : Container(                          //error to be resolved,type overflow error type
                      margin: EdgeInsets.all(5),
                      child: ImageAvatar(
                          avatarr: storyavatar, onlineStatus: false))),
          Positioned(
              bottom: 1,
              left: 25,
              child: Text(
                storyText,
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
