import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you May Know"),
            trailing: IconButton(
              onPressed: () {
                print("more clicked...");
              },
              icon: Icon(Icons.more_horiz, color: Colors.grey[700]),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: "sebin cyriac",
                  avathar: sebin,
                  mutualFriends: "2 Mutual Friends",
                  addFriend: () {
                    print("add friend");
                  },
                  removeFriend: () {
                    print(" remove friend");
                  },
                ),
                SuggestionCard(
                  name: "Vijay",
                  avathar: vijay,
                  mutualFriends: "2 Mutual Friends",
                  addFriend: () {
                    print("add friend");
                  },
                  removeFriend: () {
                    print(" remove friend");
                  },
                ),
                SuggestionCard(   
                  name: "surya",
                  avathar: surya,
                  mutualFriends: "2 Mutual Friends",
                  addFriend: (){ 
                    print("add friend");
                  },
                  removeFriend: () { 
                    print(" remove friend");
                  },
                  

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
