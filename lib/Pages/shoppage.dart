import 'package:flutter/material.dart';
import 'package:jutta/components/shoe_tile.dart';
import 'package:jutta/models/shoe.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          //searchbar
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search",
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey,
                      )),
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            ),
          ),
          //hot deals
          SizedBox(
            height: 20,
          ),
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
                      color: Colors.grey.shade700),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(name: "Air jorden", price: 250, discription: 'cool wear', imagepath: 'assets/images/J1.png');
                return ShoeTile(
                  shoe: shoe,
                );
              })
            ],
          )
          //sneaker picks
        ],
      ),
    );
  }
}
