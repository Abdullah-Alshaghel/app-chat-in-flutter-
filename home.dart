import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unver/about.dart';

class Home extends StatefulWidget {
  var messageText = TextEditingController();

  @override
  State<StatefulWidget> createState() {
    return _HomeState() ;
  }
}
class _HomeState extends State<Home> {
  var messageText = TextEditingController();
  String title = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: messageText,
          ),

          RaisedButton(
            onPressed: (){
              setState(() {
                title = messageText.text;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return About(title);
              }));

            },
            child: Text("go to about screen") ,
          ),

        ],
      ),
    );
  }
}
