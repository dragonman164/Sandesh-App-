import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/chatScreen.dart';

void main() {
  runApp(MessengerApp());
}

class MessengerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        ChatWithPerson.routeName : (context) => ChatWithPerson(),
      },
    );
  }
}

