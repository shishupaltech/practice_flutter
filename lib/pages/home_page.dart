import "package:flutter/material.dart";
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
      drawer: Drawer(),
    );
  }
}