import 'package:SI_CALCULATOR/SiCal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "MY APP",
      home:SiCal(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent,
      ),

  )
  );
}