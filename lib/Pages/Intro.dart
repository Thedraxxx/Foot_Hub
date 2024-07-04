import 'package:flutter/material.dart';
import 'package:jutta/Pages/Homepage.dart';


class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 180,bottom: 25,),
              child: Image.asset(
                'assets/images/nike1.png',
                height: 250,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Just Do It",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Welcome to Foot Hub! Discover premium, \nstylish sneakers with top-notch craftsmanship \nwith the latest designs",
              style: TextStyle(color: Colors.grey, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 40,
          ),
    Container(
  height: 60,
  width: 300,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.white60; 
        }
        return Colors.black; 
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.black54; 
        }
        return Colors.white; 
      }),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      animationDuration: Duration(seconds: 1), 
    ),
    child: Text(
      "Shop Now",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
),

        ],
      ),
    );
  }
}
