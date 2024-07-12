import 'package:flutter/material.dart';
import 'package:jutta/models/shoe.dart';

class cartItem extends StatefulWidget {
  Shoe shoe;
   cartItem({super.key, required this.shoe});

  @override
  State<cartItem> createState() => _cartItemState();
}

class _cartItemState extends State<cartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagepath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
    );
  }
}