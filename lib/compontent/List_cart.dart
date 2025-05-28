import 'package:e_commerce_2/models/product.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class List_cart extends StatelessWidget {
  final Product product;
  VoidCallback onPressed;
  List_cart({super.key, required this.product, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),

          children: [
            SlidableAction(
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(15),
              onPressed: (_) {
                onPressed();
              },
              icon: Icons.delete_sharp,
              
            ),
          ],
        ),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: MyTheme.colorScheme.inversePrimary,
          ),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //image
              Icon(Icons.favorite),
              //title
              Text(product.name),
              //price
              Text(product.price.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
