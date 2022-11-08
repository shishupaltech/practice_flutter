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
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    var catalogJosn = await rootBundle.loadString("assets/files/catalog.json");

    final decodeData = jsonDecode(catalogJosn);
    var productsData = decodeData["products"];
    print(productsData);

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    // print(productsData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
          ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16
            ),

             itemBuilder: (context,index){
              final item = CatalogModel.items![index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: GridTile(
                  header: Container(
                    child: Text(item.name, 
                    style: TextStyle(color: Colors.white),),
                    padding:const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                    ),
                  child:Image.network(item.image),
                  footer:Text(item.price.toString()),
                ),
              );
             }
             )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
