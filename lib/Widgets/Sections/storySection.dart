import 'package:flutter/material.dart';
import 'package:worksheet_class/Widgets/storyCard.dart';
import 'package:worksheet_class/assets.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyCard(
              storyText: 'Add to  story',isshowicon: true,
              storyimage: rashmika,
              storyavatar: rashmika),
          storyCard(
              storyText: 'Add to  story',
              storyimage: mamooty,
              storyavatar: mamooty),
          storyCard(
              storyText: 'Add to  story', storyimage: messi, storyavatar: messi)
        ],
      ),
    );
  }
}
