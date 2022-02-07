import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  final String avatarr;
  bool onlineStatus;
  ImageAvatar({required this.avatarr, required this.onlineStatus});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if (onlineStatus == true) {
      statusIndicator = Positioned(
          right: 8,
          bottom: 6,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.greenAccent, shape: BoxShape.circle),
          ));
    } else {
      statusIndicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              avatarr,
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
        ),statusIndicator
      ],
    );
  }
}
