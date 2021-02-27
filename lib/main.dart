import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/chatScreen.dart';
import 'screens/appSettings.dart';
import 'screens/AccountSettings.dart';
import 'screens/helpScreen.dart';

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
        AccountSettings.routeName:(context)=>AccountSettings(),
        ChatWithPerson.routeName : (context) => ChatWithPerson(),
        AppSettings.routeName: (context)=>AppSettings(),
        HelpScreen.routeName :(context)=>HelpScreen(),
      },
    );
  }
}

