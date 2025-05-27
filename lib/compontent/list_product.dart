import 'package:e_commerce_2/models/product.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class list_product extends StatelessWidget {
  final Product product;
  list_product({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyTheme.colorScheme.primary,
      ),
      width: 350,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image product
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                    ),
                    child: Icon(Icons.favorite, size: 50),
                  ),
                  SizedBox(height: 25,),
                  // title product
                  Text(
                    product.name,
                    style: TextStyle(
                      color: MyTheme.colorScheme.surface,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // description product
                  Text(
                    product.Descripition,
                    style: TextStyle(
                      color: MyTheme.colorScheme.surface,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              //price product
              Text("\$"+product.price.toString(),style: TextStyle(fontSize: 19,color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
