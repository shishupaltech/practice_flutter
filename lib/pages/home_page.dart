import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_practice/utils/routes.dart';
import 'package:flutter_practice/widgets/drawer.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'dart:convert';

import '../models/catalog.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

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
    return Scaffold(
        backgroundColor:context.theme.canvasColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context,MyRoutes.cartRoute),
            backgroundColor:MyTheme.lightBlueishColor,
            child: Icon(CupertinoIcons.cart,color: Colors.white,),
          ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
