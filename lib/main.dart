import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_practice/function_in_dart.dart';
import 'package:flutter_practice/home_page.dart';

void main()
{
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home:HomePage(),
    );
  }
}