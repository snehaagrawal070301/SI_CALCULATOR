import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
        return HomeState();
  }

}

class HomeState extends State<Home>{
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title:Text("OUR APP"),
      ),
      body:Text("floating button"),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showSnackBar(context);
        },
        child:Icon(Icons.menu),
        tooltip:"add item",
      ),
    );
  }
  void showSnackBar(BuildContext context){
    var snackBar = SnackBar(
      content: Text("snakbar")
      );
      Scaffold.of(context).showSnackBar(snackBar);
      _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}