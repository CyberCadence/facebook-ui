// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:worksheet_class/Widgets/Sections/PostSection.dart';
import 'package:worksheet_class/Widgets/Sections/headerSecetionfile.dart';
import 'package:worksheet_class/Widgets/Sections/roomSection.dart';
import 'package:worksheet_class/Widgets/Sections/statussection.dart';
import 'package:worksheet_class/Widgets/Sections/storySection.dart';
import 'package:worksheet_class/Widgets/CircularButton.dart';
import 'package:worksheet_class/Widgets/headerButton.dart';
import 'package:worksheet_class/assets.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            actions: [
              CirclularButton(
                  iconButton: Icons.search,
                  buttonClick: () {
                    print("search button clicked");
                  }),
              SizedBox(
                width: 5,
              ),
              CirclularButton(
                  iconButton: Icons.message,
                  buttonClick: () {
                    print("messeges here");
                  }),
            ],
          ),
          body: ListView(
            children: [
              statusSection(),
              Divider(
                thickness: 2,
                color: Colors.grey,
              ),
              HeaderSectionButtons(
                buttonOne: headerButtonFunction(
                    iconText: 'cam',
                    iconn: Icons.video_call,
                    buttonClick: () {},
                    color: Colors.black),
                buttonTwo: headerButtonFunction(
                    iconText: 'gallery',
                    iconn: Icons.photo_album,
                    buttonClick: () {},
                    color: Colors.black),
                buttonThree: headerButtonFunction(
                    iconText: 'cam',
                    iconn: Icons.video_call,
                    buttonClick: () {},
                    color: Colors.black),
              ),
              Divider(
                thickness: 10,
              ),
              RoomSection(),
              Divider(thickness: 10),
              StorySection(),
              Divider(
                thickness: 10,
              ),
              PostCardSection(
                accountimage: mamooty,
                accountName: 'Mamooty',
                lastupdateTime: '5h',
                postimage: raman,
                showBluetick: true,
              )
            ],
          ),
        ));
  }
}
