import 'package:e_commerce_2/compontent/button.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class Introppage extends StatelessWidget {
  const Introppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_sharp,size: 70,color: MyTheme.colorScheme.primary),
            const SizedBox(height: 20,),
            Text("Minimal Shop",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Text("Premimun Quality, Products",style: TextStyle(fontSize: 15,)),
            const SizedBox(height: 20,),
            MyButton(
              child: Icon(Icons.keyboard_double_arrow_right),
              onTap: (){
                Navigator.pushNamed(context, "/shopPage");
              },
            ),

          ],
        ),
      ),
    );
  }
}