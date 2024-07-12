import 'package:flutter/material.dart';
import 'package:jutta/components/shoe_tile.dart';
import 'package:jutta/models/cart.dart';
import 'package:jutta/models/shoe.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItem(shoe);
   //alert the msg
   showDialog(context: context,
    builder: (context)=> AlertDialog(
    title: Text("successfully added!"),
    content: Text('check your cart'),
   ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // searchbar
          const SizedBox(height: 20),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search",
                    suffixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            ),
          ),
          // hot deals
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks \u{1F525}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: ()=> addShoeToCart(shoe),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Divider(color: Colors.white),
          )
          // sneaker picks
        ],
      ),
    );
  }
}