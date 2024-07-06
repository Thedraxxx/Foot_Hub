import 'package:flutter/material.dart';
import 'package:jutta/Pages/craftpage.dart';
import 'package:jutta/Pages/shoppage.dart';
import 'package:jutta/components/botnavbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _Selectedindex = 0;
  void navigatebottombar(int index) {
    setState(() {
      _Selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    Shoppage(),
    Craftpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Image.asset(
                    "assets/images/nike.png",
                    height: 120,
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.grey[200],
                    ),
                    minLeadingWidth: 40,
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.grey[200],
                    ),
                    minLeadingWidth: 40,
                    title: Text(
                      "about",
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 15),
              child: ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.grey[200],
                ),
                minLeadingWidth: 40,
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.grey[200]),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Botnavbar(
        onTabChange: (index) => navigatebottombar(index),
      ),
      body: _pages[_Selectedindex],
    );
  }
}
