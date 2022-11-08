import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_practice/widgets/drawer.dart';
import 'dart:convert';

import '../models/catalog.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final num day = 30;

  final String name = "shishupal";

  @override 
  void initState(){
    super.initState();
    loadData();
  }
  loadData() async{
  var catalogJosn= await rootBundle.loadString("assets/files/catelog.json");
  var decodeData = jsonDecode(catalogJosn);
  print(decodeData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
