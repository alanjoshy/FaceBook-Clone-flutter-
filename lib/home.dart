import 'package:facebook/assets.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/headerButtonsecton.dart';
import 'package:facebook/sections/roomSection.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search screen appears..");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("messenger screen appears..");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonAction: () {
                  print("go Live");
                },
                buttonIcon: Icons.video_call,
                buttonColor: Colors.red,
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                buttonAction: () {
              print("upload photo");
            },
            buttonIcon: Icons.photo_library,
            buttonColor: Colors.green,
            buttonText: "Photos",
              ),
              buttonThree: headerButton(
                 buttonAction: () {
              print("create chat room");
            },
            buttonIcon: Icons.video_call,
            buttonColor: Colors.purple,
            buttonText: "Room",
              ),
            ),
            thickDivider,
            Roomsection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              name: "Alan Joshy",
              avathar: alan,
              publishedAt: "5hr",
              postTitle: "At Banglore!",
              postImage: alan,
              showBlueTick: false,
              likeCount: "250",
              shareCount: "1",
              commentCount: "50",
            ),
            thickDivider,
            PostCard(
              name: "Dulqure salman",
              avathar: dulquer,
              publishedAt: "5hr",
              postTitle: "",
              postImage: dqPost,
              showBlueTick: true,
              likeCount: "10k",
              shareCount: "1k",
              commentCount: "2k",
            ),
            thickDivider,
            PostCard(
              name: "Surya sivakumar",
              avathar: surya,
              publishedAt: "5hr",
              postTitle: "Old pic",
              postImage: suryaPost,
              showBlueTick: true,
              likeCount: "100k",
              shareCount: "7k",
              commentCount: "5k",
            ),
            thickDivider,
            PostCard(
              name: "vijay",
              avathar: vijay,
              publishedAt: "5 days ago",
              postTitle: "Sarkar",
              postImage: vijayPost,
              showBlueTick: true,
              likeCount: "100k",
              shareCount: "7k",
              commentCount: "5k",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              name: "Arun Smoki",
              avathar: arun,
              publishedAt: "5hr",
              postTitle: "java powerfull machine...",
              postImage: arunPost,
              showBlueTick: false,
              likeCount: "4k",
              shareCount: "200k",
              commentCount: "1.2k",
            ),
            
            thickDivider,
        
          ],
        ),
      ),
    );
  }
}
