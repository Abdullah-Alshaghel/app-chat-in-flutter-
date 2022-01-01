import 'package:flutter/material.dart';
import 'package:unver/home.dart';

void main() {
  runApp(
      MaterialApp(
         theme: ThemeData(
      primarySwatch: Colors.blue
    ),
        home:Scaffold(
          appBar: AppBar(
            title: Text("chat"),
            actions: <Widget>[
              Icon(Icons.search),
              Icon(Icons.shopping_cart)
            ],
          ),
          drawer: Drawer(),
          body: Home(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){

            },
            child: Icon(Icons.add),
          ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.black,),
                  title: Text("Home", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black))
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black,),
                  title: Text("Accont", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black))
                ),
              ],
            )

        )

  )
  );
}
