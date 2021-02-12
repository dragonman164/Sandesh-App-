import 'package:flutter/foundation.dart';

class ChatPersonModel{
  String name,lastMessage;
  DateTime lastMessageTime;
  List<Map<String,String>> messages;

  ChatPersonModel({
  @required this.name,
    @required this.lastMessage,
    @required this.lastMessageTime,
    @required this.messages,
  });
}


List <ChatPersonModel> personData = [
  ChatPersonModel(name: 'Harish', lastMessage: 'Who am I?', lastMessageTime: DateTime.now(),messages: [{
    'type':'Sent',
    'message':'Hello'
  },{
    'type':'Received',
    'message':'Hi'
  }]),
  ChatPersonModel(name: 'Girish', lastMessage: 'Bhai aap kaun ho?', lastMessageTime: DateTime.now(),messages: [{
    'type':'Sent',
    'message':'Hello'
  },{
    'type':'Received',
    'message':'Hi'
  }]),
  ChatPersonModel(name: 'Manish', lastMessage: 'Mai theek hoon bhai', lastMessageTime: DateTime.now(),messages: [{
    'type':'Sent',
    'message':'Hello'
  },{
    'type':'Received',
    'message':'Hi'
  }]),
  ChatPersonModel(name: 'Sonish', lastMessage: 'Bhai CSGO Khelega?', lastMessageTime: DateTime.now(),messages: [{
    'type':'Sent',
    'message':'Hello'
  },{
    'type':'Received',
    'message':'Hi'
  }]),
  ChatPersonModel(name: 'Baharish', lastMessage: 'Bhai app banaega?', lastMessageTime: DateTime.now(),messages: [{
    'type':'Sent',
    'message':'Hello'
  },{
    'type':'Received',
    'message':'Hi'
  }]),
  ChatPersonModel(name: 'Nanish', lastMessage: 'Bhai Thapar Jaayega?', lastMessageTime: DateTime.now(),messages: [{
    'type':'Sent',
    'message':'Hello'
  },{
    'type':'Received',
    'message':'Hi'
  }]),

];

