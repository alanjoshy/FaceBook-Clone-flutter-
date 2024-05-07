import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class Roomsection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avathar(displayImage: alan, displayStatus: true),
          Avathar(displayImage: dulquer, displayStatus: true),
          Avathar(displayImage: sebin, displayStatus: true),
          Avathar(displayImage: arun, displayStatus: true),
          Avathar(displayImage: surya, displayStatus: true),
          Avathar(displayImage: strell, displayStatus: true),
          Avathar(displayImage: tony, displayStatus: true),
          Avathar(displayImage: vijay, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(right: 5,left:5),
      child: OutlineButton.icon(
      
      shape: StadiumBorder(),
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "create  \n room",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      onPressed: () {
        print("create chat room");
      },
      borderSide: BorderSide(
        color: Colors.blue[100],
        width: 2,
      ),
    ),
    );
  }
}
