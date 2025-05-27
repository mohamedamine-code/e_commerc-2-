import 'package:e_commerce_2/models/Shop.dart';
import 'package:e_commerce_2/pages/cartPage.dart';
import 'package:e_commerce_2/pages/intropPage.dart';
import 'package:e_commerce_2/pages/shopPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (context)=>Shop(),
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/':(context)=> Introppage(),
        '/shopPage':(context)=> Shoppage(),
        '/cartPage':(context)=> Cartpage(),
      }
    );
  }
}