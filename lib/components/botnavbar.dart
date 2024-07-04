import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Botnavbar extends StatelessWidget {
  const Botnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          
          tabs: [
          
      GButton(
        icon: Icons.home,
        text: 'Shop',
      ),
      GButton(
        icon: Icons.shopping_cart,
        text: "Cart",
      )
    ]));
  }
}
