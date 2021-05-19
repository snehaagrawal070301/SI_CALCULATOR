import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Listtutorial extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ListtutorialState();
  }

}
class ListtutorialState extends State<Listtutorial>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("list preview"),
      ),
      body:getListView()
    );
  }

}
Widget getListView(){
  // ignore: unused_local_variable
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.local_gas_station),
        title: Text("gate pass"),
        subtitle: Text("apply for gate pass"),
      ),
      ListTile(
        leading: Icon(Icons.insert_comment),
        title: Text("Complain"),
        subtitle: Text("drop your complain"),
      ),
      ListTile(
        leading: Icon(Icons.fastfood),
        title: Text("Mess Menu"),
        subtitle: Text("plan out your menu"),
      ),
      ListTile(
        leading: Icon(Icons.update),
        title: Text("Update"),
        subtitle: Text("view updates"),
      ),
    ],
  );
  return listView;
}