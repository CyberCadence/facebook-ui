import 'package:flutter/material.dart';
import 'package:worksheet_class/Widgets/imageAvatar.dart';
import 'package:worksheet_class/assets.dart';

class statusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:ImageAvatar(avatarr: rashmika,onlineStatus: false,),
      title: const TextField(
        decoration: InputDecoration(
            hintText: "Whats on your mind?",
            hintStyle: TextStyle(color: Colors.black26),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
