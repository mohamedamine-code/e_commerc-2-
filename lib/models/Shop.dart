import 'package:e_commerce_2/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  // list shop
  List<Product> shop = [
    Product(
      name: "Product 1",
      Descripition: "this is the describition of the product ... ",
      price: 55.66,
    ),
    Product(
      name: "Product 1",
      Descripition: "this is the describition of the product ... ",
      price: 55.66,
    ),
    Product(
      name: "Product 1",
      Descripition: "this is the describition of the product ... ",
      price: 55.66,
    ),
    Product(
      name: "Product 1",
      Descripition: "this is the describition of the product ... ",
      price: 55.66,
    ),
  ];
  //list user cart 
  List<Product>cart=[];

  // get shop List
  List<Product> get getshop =>shop; 
  // get cart list 
  List<Product> get getCart=>cart;

  //add item cart
  void additem(Product x){
    cart.add(x);
    notifyListeners();
  }
  void removeItem(Product x){
    cart.remove(x);
    notifyListeners();
  }
}
