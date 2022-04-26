import 'package:app_011/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Page2 extends StatefulWidget {
  static const String id = "page_2";
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                Page1.id,
              );
            },
            icon: Icon(Icons.forward),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_arrow,
        animatedIconTheme: IconThemeData(
          size: 22.0,
        ),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              backgroundColor: Colors.red,
              label: "Setting",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('first');
              }),
          SpeedDialChild(
              child: Icon(
                Icons.color_lens,
                color: Colors.white,
              ),
              backgroundColor: Colors.deepOrange,
              label: "Images",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('Second');
              }),
          SpeedDialChild(
              child: Icon(
                Icons.flash_on,
                color: Colors.white,
              ),
              backgroundColor: Colors.green,
              label: "Lamp",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('Third');
              }),
          SpeedDialChild(
              child: Icon(
                Icons.timer,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              label: "Time",
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              onTap: () {
                print('Fourth');
              }),
        ],
      ),
    );
  }
}
