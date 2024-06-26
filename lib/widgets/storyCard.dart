import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/avathar.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avathar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    @required this.labelText,
    @required this.story,
    @required this.avathar,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("add new story");
                    },
                  )
                : Avathar(
                    displayImage: avathar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Text(
              labelText != null ? labelText : "n/a",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
