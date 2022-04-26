import 'package:app_011/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Page1 extends StatefulWidget {
  static const String id = "page_1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(" <- A -> "),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                Page2.id,
              );
            },
            icon: Icon(Icons.forward),
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: Container(
        color: Colors.lightBlue[100],
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: GNav(
            backgroundColor: Colors.lightBlue[100]!,
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.lightBlue.shade600,
            gap: 10,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: " home",
              ),
              GButton(
                icon: Icons.search,
                text: 'search',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: " likes",
              ),
              GButton(
                icon: Icons.add,
                text: "add",
              )
            ],
          ),
        ),
      ),
    );
  }
}
