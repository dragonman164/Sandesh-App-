import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static String routeName = '/helpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body:Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
              Text('What is Sandesh App?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 20,),
            Text('Sandesh App is a Personal Messaging Chat App powered by Sandesh Backend Server. We ensure all your Privacy and Security. The Chats are end to end encrypted',
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),),
            SizedBox(height: 20,),
            Text('Features of Sandesh App:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            SizedBox(height: 20,),
            Text('1. End to End Encryption.\n2. Real Time Chatting. \n3. Ability to send documents like photos,music,pdf\'s ,etc ',

              style: TextStyle(
                fontSize: 15,
              ),),
            SizedBox(height: 20,),
            Text('All Rights Reserved 2020-21',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),),

          ],
        ),
      )
    );
  }
}
