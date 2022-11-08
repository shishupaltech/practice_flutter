import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
 
  @override
  Widget build(BuildContext context){
     final imageUrl = "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F56866%2Fgarden-rose-red-pink-56866.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-pixabay-56866.jpg%26fm%3Djpg&imgrefurl=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fflowers%2F&tbnid=QAg7ZzJJAVtJfM&vet=12ahUKEwi2sJGspp77AhWqi9gFHX1-DQsQMygBegUIARDAAQ..i&docid=nVrbZ6x84_QItM&w=3008&h=2000&q=flowers&ved=2ahUKEwi2sJGspp77AhWqi9gFHX1-DQsQMygBegUIARDAAQ";
    return Drawer(

      child:Container(
        color:Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color:Colors.red),
              padding: EdgeInsets.zero,
              
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                
                accountEmail:Text("Shishupal"),
                accountName: Text("codeshishupal@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      
               )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",
              textScaleFactor: 1.2,
              style:TextStyle(color:Colors.white)),
            )
            ,
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Porfile",
              textScaleFactor: 1.2,
              style:TextStyle(color:Colors.white)),
            )
            ,
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("email",
              textScaleFactor: 1.2,
              style:TextStyle(color:Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}