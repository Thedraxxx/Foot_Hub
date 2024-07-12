import 'package:flutter/material.dart';
import 'package:jutta/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan 1",
        price: '500',
        discription:
            "The Air Jordan 1 is a timeless classic featuring the iconic  logo and premium leather.",
        imagepath: 'assets/images/J1.png'),
    Shoe(
        name: "Air Jordan 3 retro",
        price: '900',
        discription:
            " Designed by Tinker Hatfield, this shoe offers a perfect blend of style and comfort.",
        imagepath: 'assets/images/J7.png'),
    Shoe(
        name: "Air Jordan 11 Retro",
        price: '400',
        discription:
            " The Air Jordan 4 Retro is known for its unique mesh paneling and supportive wings for customizable lacing",
        imagepath: 'assets/images/J6.png'),
    Shoe(
        name: "Air Jordan 13 Retro",
        price: '450',
        discription:
            "The Air Jordan 1 is a timeless classic featuring the iconic  logo and premium leather.",
        imagepath: 'assets/images/J9.png'),
    Shoe(
        name: "Air Jordan 5 Retro",
        price: '800',
        discription:
            "The Air Jordan 5 Retro is known for its fighter jet-inspired design, featuring a reflective tongue and translucent outsole.",
        imagepath: 'assets/images/J5.png'),
  ];
  //list of items in user cart
       List<Shoe> userCart =[];
  //get list of shoes for the sale
      List<Shoe> getShoeList(){
        return shoeShop;
      }
      List<Shoe> getUserCart()
      {
        return userCart;
      }

  // add item in cart
         void addItem(Shoe shoe){
          userCart.add(shoe);
          notifyListeners();
         }
  // rempve item in cat
  void removeItem(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
