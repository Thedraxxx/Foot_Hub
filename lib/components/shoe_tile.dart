import 'package:flutter/material.dart';
import 'package:jutta/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[100]),
      margin: EdgeInsets.only(left: 10),
       child: Column(
        children: [
          //image
          Image.asset(shoe.imagepath),
        ],
       ),
    );
  }
}