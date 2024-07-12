import 'package:flutter/material.dart';
import 'package:jutta/components/cart-item.dart';
import 'package:jutta/models/cart.dart';
import 'package:jutta/models/shoe.dart';
import 'package:provider/provider.dart';

class Craftpage extends StatefulWidget {
  const Craftpage({super.key});

  @override
  State<Craftpage> createState() => _CraftpageState();
}

class _CraftpageState extends State<Craftpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Text(
                    "My cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //list..
                  Expanded(
                      child: value.getUserCart().isEmpty
                          ? Center(
                              child: Text("The cart is Empty !"),
                            )
                          : ListView.builder(
                              itemCount: value.getUserCart().length,
                              itemBuilder: (context, index) {
                                Shoe individualShoe =
                                    value.getUserCart()[index];
                                return cartItem(shoe: individualShoe);
                              }))
                ],
              ),
            ));
  }
}
