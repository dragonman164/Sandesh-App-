import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/ChatPersonModel.dart';
import '../Widgets/Message.dart';

class ChatWithPerson extends StatefulWidget {

  static String routeName = '/chatScreen';

  @override
  _ChatWithPersonState createState() => _ChatWithPersonState();
}

class _ChatWithPersonState extends State<ChatWithPerson> {
  List <Map<String,String>>messages;
  List<Widget> messageWidget = [MessageSent(message: 'This is a test Message',),MessageRecieved(message: 'This is a test Message',)];

  TextEditingController _text;
  bool _changeIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero, () {
      final Map title = ModalRoute.of(context).settings.arguments as Map;
      for(ChatPersonModel elem in personData)
      {
        if(elem.name == title['name'])
        {
          messages = elem.messages;
          break;
        }
      }
      for(Map<String,String> elem in messages)
      {
        if(elem['type'] == 'Sent')
        messageWidget.add(MessageSent(message: elem['message'],));
        else
          messageWidget.add(MessageRecieved(message: elem['message'],));
      }
      _text = TextEditingController();
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _text.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final Map title = ModalRoute.of(context).settings.arguments as Map;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/background.jpg'),
              fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(200)
                ),
                  child: Icon(Icons.person,size: 50,)),
              SizedBox(width: 30,),
              Text(title['name']),
            ],
          ),),
        body: ListView(
            padding: EdgeInsets.all(30),
              children: messageWidget
            ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Container(
             decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(200),
             ),

             height: 48,
             width: 270,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     width: 190,
                     child: TextField(
                    controller: _text,
                      onTap: () {
                      setState(() {
                        _changeIcon = true;
                      });
                      },
                       onEditingComplete: () {
                      _changeIcon = false;
                      setState(() {});
                       },
                      decoration: InputDecoration(
                        hintText: 'Type your Message Here',
          border: InputBorder.none,
                      ),
                     ),
                   ),
                   IconButton(
                     icon: Icon(Icons.description),
                     splashColor: Colors.red,
                     onPressed: () {
                       showDialog(
                           context: context,
                           builder: (BuildContext context) => Dialog(
                             child: Container(
                               width: 200,
                               height: 200,
                               color: Colors.grey,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.pinkAccent,
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         height: 80,
                                         width: 80,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Icon(Icons.contacts,size: 50,),
                                             Text('Contact',style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 17,
                                             ),)
                                           ],
                                         ),
                                       ),
                                       Container(

                                         decoration: BoxDecoration(
                                           color: Colors.yellowAccent,
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         height: 80,
                                         width: 80,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Icon(Icons.description,size: 50,),
                                             Text('Document',style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 15,
                                             ),)
                                           ],
                                         ),
                                       ),Container(

                                         decoration: BoxDecoration(
                                           color: Colors.greenAccent,
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         height: 80,
                                         width: 80,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Icon(Icons.camera,size: 50,),
                                             Text('Camera',style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 17,
                                             ),)
                                           ],
                                         ),
                                       ),

                                   ],
                                 ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.orangeAccent,
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         height: 80,
                                         width: 80,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Icon(Icons.music_note,size: 50,),
                                             Text('Audio',style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 17,
                                             ),)
                                           ],
                                         ),
                                       ),
                                       Container(

                                         decoration: BoxDecoration(
                                           color: Colors.purpleAccent,
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         height: 80,
                                         width: 80,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Icon(Icons.location_city,size: 50,),
                                             Text('Location',style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 17,
                                             ),)
                                           ],
                                         ),
                                       ),
                                       Container(

                                         decoration: BoxDecoration(
                                           color: Colors.blueAccent,
                                           borderRadius: BorderRadius.circular(20),
                                         ),
                                         height: 80,
                                         width: 80,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Icon(Icons.photo,size: 50,),
                                             Text('Gallery',style: TextStyle(
                                               fontWeight: FontWeight.bold,
                                               fontSize: 17,
                                             ),)
                                           ],
                                         ),
                                       ),

                                     ],
                                   ),

                                 ],
                               ),
                             ),
                           ));
                     },
                   ),
                 ],
               ),
           ),
            SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: () {
                messageWidget.add(MessageSent(message: _text.text,));
                _text.clear();
                setState(() {});
              },
              child: _changeIcon?Icon(Icons.send,size:32):Icon(Icons.mic,size: 32,),
              backgroundColor: Colors.teal,
            ),

          ],
        ),

      ),
    );
  }
}
//
//Widget showDialog()
//{
//  return
//}
