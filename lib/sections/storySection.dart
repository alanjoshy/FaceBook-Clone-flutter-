import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView (
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "add to story",
            avathar: alan,
            story: alan,
            createStoryStatus: true,

          ),
          StoryCard(
            labelText: "arun smokie",
            avathar: arun,
            story: arunPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "dulqure salman",
            avathar: dulquer,
            story: dqPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "sebin syriac",
            avathar: sebin,
            story: fishingPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "strell",
            avathar: strell,
            story: strellPost,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}