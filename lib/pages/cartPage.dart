import 'package:e_commerce_2/compontent/List_cart.dart';
import 'package:e_commerce_2/models/Shop.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  
  const Cartpage({super.key});
  void delate(BuildContext context ,x){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            "You are sure to add this product ?",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Text("nooo"),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<Shop>().removeItem(x);
              },
              icon: Text("yub"),
            ),
          ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    final product = context.watch<Shop>().getCart;
    void ShowApi(){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          content: Text("contect your application to an backend to can user paye !!"),
          actions: [IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Text("kk"))],
        );
      });
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart Page'),
      ),
      body:product.isEmpty?Center(child: Text("No item add to the cart .")):
      ListView.builder(
        itemCount: product.length,
        itemBuilder: (BuildContext context,index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            List_cart(
              onPressed: (){
                delate(context,product[index]);
              },
              product: product[index],
            ),
            Text('Swipe left to delate item !',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: (){
          ShowApi();
        },
        child: Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            color: MyTheme.colorScheme.primary,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Text('PAY NOW ',style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}