import 'package:e_commerce_2/theme/theme.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  VoidCallback onTap;
  Widget child;
  MyButton({required this.onTap,required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: MyTheme.colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}