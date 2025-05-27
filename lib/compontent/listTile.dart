import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  String data;
  IconData icon;
  VoidCallback onTap;
  MyListTile({required this.data,required this.icon,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: ListTile(
          title: Text(data,style: TextStyle(fontSize: 16),),
          leading: Icon(icon,size: 35,color: MyTheme.colorScheme.primary,),
        ),
      ),
    );
  }
}