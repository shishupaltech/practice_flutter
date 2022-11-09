import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({Key? key,required this.catalog}) :assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(children: [ 
          Hero(tag: Key(catalog.id.toString()), child:
          Image.network(catalog.image),
          ).h32(context),
          Expanded(
            child:VxArc(
              height: 30.0,
              arcType:VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child:Container(  
                color: Colors.red,
              ),
            )
          ),
        ]
        ),
      ),
    );
  }
}
