import 'package:e_commerce_2/compontent/Drawer.dart';
import 'package:e_commerce_2/compontent/list_product.dart';
import 'package:e_commerce_2/models/Shop.dart';
import 'package:e_commerce_2/models/product.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    final product=context.watch<Shop>().getshop;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/cartPage");
            },
            icon: Icon(Icons.store, size: 30),
          ),
        ],
        title: Text("Shop Page "),
        centerTitle: true,
        leading: Builder(
          builder:
              (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (BuildContext context,index){
              return list_product(
                product: product[index],
              );
            }),
          )
        ],
      ),
    );
  }
}
