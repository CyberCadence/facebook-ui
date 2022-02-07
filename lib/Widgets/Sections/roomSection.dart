// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:worksheet_class/Widgets/imageAvatar.dart';
import 'package:worksheet_class/assets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(padding: EdgeInsets.fromLTRB(5, 0, 8, 0),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(), fixedSize: Size(125, 40)),
              onPressed: () {},
              icon: Icon(Icons.ac_unit_outlined),
              label: Text('create \n room'),
            ),
          ),
          ImageAvatar(avatarr: mamooty,onlineStatus: true,),
          ImageAvatar(avatarr: ronaldo,onlineStatus: true,),
          ImageAvatar(avatarr: messi,onlineStatus: true,),
          ImageAvatar(avatarr: rashmika,onlineStatus: true),
          ImageAvatar(avatarr: mamooty,onlineStatus: true,),
          ImageAvatar(avatarr: ronaldo,onlineStatus: true,),
          ImageAvatar(avatarr: rashmika,onlineStatus: true,)
        ],
      ),
    );
  }
}
