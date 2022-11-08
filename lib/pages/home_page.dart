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
          ? ListView.builder(
              itemCount: CatalogModel.items!.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: CatalogModel.items![index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
