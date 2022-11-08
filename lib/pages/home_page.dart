import "package:flutter/material.dart";
import 'package:flutter_practice/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  final num day = 30;
  final String name = "shishupal";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
        title: Text("Catalog App"),
      ),
      body: Center(
        child:Container(
          child: Text("Welcome to $day days of flutter by $name"),
          )
      ),
      drawer: MyDrawer(),
    );
  }
}