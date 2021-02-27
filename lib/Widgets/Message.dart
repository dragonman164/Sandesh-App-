import 'package:flutter/material.dart';

class MessageSent extends StatelessWidget {

  String message;

  MessageSent({this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100,bottom: 20),
      height: 40,
      width: 220,
      child: Center(child: Text(message,style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),)),
      decoration: BoxDecoration(
          color: Colors.green[300],
          borderRadius: BorderRadius.only(topRight: Radius.elliptical(40, 20))
      ),
    );
  }
}


class MessageRecieved extends StatelessWidget {

  String message;

  MessageRecieved({this.message});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(right: 100,bottom: 20),
      height: 40,
      width: 220,
      child: Center(child: Text(message,style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(40, 20))
      ),
    );
  }
}