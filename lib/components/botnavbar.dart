import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Botnavbar extends StatelessWidget {
  void Function(int)? onTabChange;
   Botnavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade800,
          tabBackgroundColor: Colors.grey.shade100,
          tabActiveBorder: Border.all(color: Colors.grey.shade200),
          tabBorder: Border.all(color: Colors.grey.shade100),
         
          tabBorderRadius: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value)=> onTabChange!(value),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          tabs: [
      GButton(
        icon: Icons.home,
        text: 'Shop',
         backgroundGradient: LinearGradient(colors: [Colors.white38, Colors.black38]),
      
      ),
      GButton(
        icon: Icons.shopping_cart,
        text: "Cart",
         backgroundGradient: LinearGradient(colors: [Colors.black38, Colors.white38]),
      )
    ]));
  }
}
