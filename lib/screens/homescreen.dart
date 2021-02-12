import 'package:flutter/material.dart';
import '../models/ChatPersonModel.dart';
import 'chatScreen.dart';

class HomePage extends StatelessWidget {

  Widget makeListTile (BuildContext context,String name,String lastMessage,DateTime lastMessageTime) {
    return  Column(
      children: [
        ListTile(
          leading: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.grey,
              ),
              child: Icon(Icons.person,size: 50,)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),),
              Text(lastMessage + '    '+lastMessageTime.hour.toString() +':'+ lastMessageTime.minute.toString() ,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),),
              Divider(height: 35,color: Colors.black,),
            ],
          ),
    onTap:() { Navigator.of(context).pushNamed(ChatWithPerson.routeName,arguments: {'name':name});
    },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
            decoration: BoxDecoration(
              border: Border.all(color:Colors.black,width: 6 ),
            ),
          child: Column(
            children: [
              Image(image: AssetImage('assets/messengerapp.jpg'),),

              Container(
                color: Colors.pinkAccent,
                child: Center(
                  child: Text('Sandesh App Menu',style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,),
                ),
              ),

            ],
          ),


            ),
            Column(
              children: [
                SizedBox(height: 20,),
                ListTile(
                      leading: Icon(Icons.contacts, size: 30,),
                      title: Text('Contacts', style: TextStyle(
                        fontSize: 20,
                      ),),
                    ),

                ListTile(
                  leading: Icon(Icons.settings,size: 30,),
                  title : Text('App Settings',style: TextStyle(
                    fontSize: 20
                  ),),
                ),
                ListTile(
                  leading: Icon(Icons.call,size: 30,),
                  title : Text('Call Logs',style: TextStyle(
                    fontSize: 20
                  ),),
                ),
                ListTile(
                  leading: Icon(Icons.camera,size: 30,),
                  title : Text('Camera',style: TextStyle(
                    fontSize: 20
                  ),),
                ),

              ],
            ),
          ],
        )
      ),
      appBar: AppBar(title: Text('Sandesh App',style: TextStyle(
        fontWeight: FontWeight.bold,
      ),)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(

              children: personData.map((e)  {
                return makeListTile(context,e.name, e.lastMessage, e.lastMessageTime);
              }).toList()

          ),
        ),
      )
    );
  }
}
