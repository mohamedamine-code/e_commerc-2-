import 'package:e_commerce_2/compontent/listTile.dart';
import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            
            children: [
              
              DrawerHeader(
                child: Icon(
                  Icons.shop_sharp,
                  size: 70,
                  color: MyTheme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 25,),
              MyListTile(data: 'Shop Page', icon:Icons.done_all_sharp,onTap: () {
              Navigator.popAndPushNamed(context, '/shopPage');
                
              },),
              MyListTile(data: 'Cart Page', icon:Icons.store ,onTap: () {
              
              Navigator.popAndPushNamed(context, '/cartPage');
                
              }),
            ],
          ),


          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: MyListTile(data: 'Exit', icon: Icons.exit_to_app,onTap: () {
              Navigator.popAndPushNamed(context, '/');
            }),
          ),
        ],
      ),
    );
  }
}
