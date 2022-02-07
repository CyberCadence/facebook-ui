// ignore_for_file: prefer_if_null_operators, unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:worksheet_class/Widgets/BlueTick.dart';
import 'package:worksheet_class/Widgets/Sections/headerSecetionfile.dart';
import 'package:worksheet_class/Widgets/headerButton.dart';
import 'package:worksheet_class/Widgets/imageAvatar.dart';

class PostCardSection extends StatelessWidget {
  final String accountimage;
  final String accountName;
  final String lastupdateTime;
  final String postimage;
  bool showBluetick;

  PostCardSection({
    required this.accountimage,
    required this.accountName,
    required this.lastupdateTime,
    required this.postimage,
    this.showBluetick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postheaderSection(),
          postTextsection(),
          imageSectionpost(),
          footerSection(),
          HeaderSectionButtons(
              buttonOne: headerButtonFunction(
                  iconText: 'Like',
                  iconn: Icons.thumb_up,
                  buttonClick: () {},
                  color: Colors.white),
              buttonTwo: headerButtonFunction(
                  iconText: 'Comment',
                  iconn: Icons.comment,
                  buttonClick: () {},
                  color: Colors.white),
              buttonThree: headerButtonFunction(
                  iconText: 'Share',
                  iconn: Icons.share,
                  buttonClick: () {},
                  color: Colors.white))
        ],
      ),
    );
  }

  Widget postheaderSection() {
    return Container(
      child: ListTile(
        leading: ImageAvatar(avatarr: accountimage, onlineStatus: false),
        title: Row(
          children: [
            Text(accountName == null ? "" : accountName),
            SizedBox(
              width: 5,
            ),
            showBluetick ? BlueTick() : SizedBox()
          ],
        ),
        subtitle: SizedBox(
          width: 5,
          child: Row(
            children: [
              Text(lastupdateTime == null ? "" : lastupdateTime),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.public,
                size: 20,
              )
            ],
          ),
        ),
        trailing: Icon(Icons.more_horiz),
      ),
    );
  }

  Widget postTextsection() {
    return Container(
        child: Text(
      'happy pooram',
      style: TextStyle(color: Colors.black),
    ));
  }

  Widget imageSectionpost() {
    return Container(
      child: Image.asset(postimage),
    );
  }

  Widget footerSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueAccent),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 15,
                    )),
                SizedBox(
                  width: 5,
                ),
                TextSection(countTextt: '10K Likes')
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                TextSection(countTextt: '5k '),
                TextSection(countTextt: 'Comments'),
                SizedBox(
                  width: 5,
                ),
                TextSection(countTextt: '1k'),
                SizedBox(
                  width: 5,
                ),
                TextSection(countTextt: 'Shares')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget TextSection({@required String countTextt = ''}) {
    return Text(countTextt == null ? "" : countTextt,
        style: TextStyle(color: Colors.black));
  }
}
