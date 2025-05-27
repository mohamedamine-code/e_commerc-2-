import 'package:e_commerce_2/compontent/Drawer.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Page "),
        centerTitle: true,
        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.menu)))),
      drawer: MyDrawer(),
    );
  }
}