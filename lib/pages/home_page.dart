import "package:flutter/material.dart";
import 'package:flutter_practice/widgets/drawer.dart';

import '../models/catalog.dart';
import '../widgets/item_widget.dart';
class HomePage extends StatelessWidget {
  final num day = 30;
  final String name = "shishupal";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50,(index)=>CatalogModel.items[0]);
    return Scaffold(

      appBar: AppBar(
        
        title: Text("Catalog App"),
      ),
      body: ListView.builder(

        itemCount:dummyList.length,
        itemBuilder: (context,index){
          return ItemWidget( 
            item:dummyList[index],
          );
      },),
      drawer: MyDrawer(),
    );
  }
}