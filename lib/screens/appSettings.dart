import 'package:flutter/material.dart';
import 'helpScreen.dart';
import 'AccountSettings.dart';
String name='Default',status = 'Default';

class AppSettings extends StatefulWidget {
  static String routeName ='/appSettings';

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Settings'),),
      body: Column(
        children: [
          Divider(height: 30,thickness: 2,color: Colors.black,),
         Row(

           children: [
             Container(
               width: 70,
               height:70,
               margin: EdgeInsets.only(left: 40,top:17,right: 40),
               child: Icon(Icons.person,size: 50,),
               decoration: BoxDecoration(
                 color: Colors.grey,
                 borderRadius: BorderRadius.circular(60),
               ),
             ),
             Column(
               children: [Text(name,style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
               textAlign: TextAlign.center,),
                 SizedBox(height: 5,),
                 Text(status,style: TextStyle(
                   fontSize: 15,

                 ),textAlign: TextAlign.center,)],
             )

           ],
         ),
          Divider(height: 30,thickness: 2,color: Colors.black,),
          Container(
            margin: EdgeInsets.only(left:40,bottom: 20,right: 20),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.grey,width: 2 ),
            ),
            child: ListTile(
              leading: Icon(Icons.person,size: 30,color: Colors.green,),
              onTap: () async{
          final result = await Navigator.of(context).pushNamed(AccountSettings.routeName) as Map;
          if(result != null)
              setState(() {
                name = result['Name'];
                status = result['Status'];
              });

              },
              title: Text('Account',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left:40,bottom: 20,right: 20),
            decoration: BoxDecoration(
              border: Border.all(color:Colors.grey,width: 2 ),
            ),
            child: ListTile(
              leading: Icon(Icons.help,size: 30,color: Colors.green,),
              onTap :() {
              Navigator.of(context).pushNamed(HelpScreen.routeName);
              },
              title: Text('Help',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
            ),
          ),
          Text('Powered By Sandesh Backend Server',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
        ],
      )
    );
  }
}
