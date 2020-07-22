import 'package:flutter/material.dart';

class SmartHomeMainPage extends StatefulWidget {
  @override
  _SmartHomeMainPageState createState() => _SmartHomeMainPageState();
}

class _SmartHomeMainPageState extends State<SmartHomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(64),
                  bottomLeft: Radius.circular(64)
                )
              ),
              child: Column(
                children: [

                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home), onPressed: () {  },
                  iconSize: 32,
                  color: Colors.orangeAccent,
                ),
                IconButton(
                  icon: Icon(Icons.local_florist), onPressed: () {
                },
                  iconSize: 32,
                  color: Colors.orangeAccent[100],
                ),
                IconButton(
                  icon: Icon(Icons.person), onPressed: () {  },
                  iconSize: 32,
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}


















