import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avathar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;


  SuggestionCard( {
    @required this.avathar,
    @required this.name,
    @required this.mutualFriends,
    @required this.addFriend,
    @required this.removeFriend,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(  
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.only( 
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name : ""),
              subtitle: Text(mutualFriends != null ? mutualFriends : ""),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        iconButton(
                          buttonAction: addFriend,
                          buttonIcon: Icons.account_box,
                          buttonIconColor: Colors.white,
                          butttonText: "Add Friend",
                          buttonTextColor: Colors.white,
                          buttonColor: Colors.blue[300],
                        ),
                        blankButton(
                          buttonAction: removeFriend,
                          buttonText: "Remove",
                          buttonTextColor: Colors.black,
                          buttonColor: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    @required void Function() buttonAction,
    @required String buttonText,
    @required Color buttonColor,
    @required Color buttonTextColor,
  }) {
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget iconButton({
    @required void Function() buttonAction,
    @required IconData buttonIcon,
    @required Color buttonColor,
    @required Color buttonTextColor,
    @required Color buttonIconColor,
    @required String butttonText,
  }) {
    return FlatButton.icon(
      icon: Icon(buttonIcon, color: buttonIconColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      label: Text(
        butttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      color: buttonColor,
      onPressed: buttonAction,
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avathar != null ?Image.asset(avathar , 
        height: 260, fit: BoxFit.cover): SizedBox(),
      ),
    );
  }
}
