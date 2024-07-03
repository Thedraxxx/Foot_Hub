import 'package:flutter/material.dart';

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
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.white; // Background color when hovered
        }
        return Colors.black; // Default background color
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.black; // Text color when hovered
        }
        return Colors.white; // Default text color
      }),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      animationDuration: Duration(milliseconds: 300), // Animation duration
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
