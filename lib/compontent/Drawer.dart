import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.shop_sharp,size: 70,color: MyTheme.colorScheme.inversePrimary),)
        ],
      ),
    );
  }
}