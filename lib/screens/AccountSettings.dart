import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  static String routeName='/accountSettings';



  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {

  TextEditingController name,status;

  @override
  void initState() {
    // TODO: implement initState
    name = TextEditingController();
    status = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    name.dispose();
    status.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
      ),
      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Text('If you want to change anything,type in the desired field and tap apply Button',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
              SizedBox(height: 50,),
              TextField(
                controller: name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText:'Your Name'
            )
              ),
              SizedBox(height: 50,),
              TextField(
                controller: status,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:'Your Status'
                  )
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context,{
                        'Name':name.text,
                        'Status':status.text,
                      });
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.check,size: 30,),
                          Text('Save Changes',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color : Colors.greenAccent,
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: () {
                   Navigator.of(context).pop();

                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.check,size: 30,),
                          Text('Discard',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),)
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color : Colors.redAccent,
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('Your name and status will be visible to other users when yoiu chat with them.'),
            ],

          ),
        ),
      )
    );
  }
}
