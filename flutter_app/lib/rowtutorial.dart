import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rowtutorial extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RowtutorialState();
  }

}

class RowtutorialState extends State<Rowtutorial>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("row tutorial"),
      ),
      body:Container(
        child: Column(
          children: <Widget>[
            Text("first"),
            Text("second"),
            Text("third"),
          ],
        )
      )
    );
  }

}