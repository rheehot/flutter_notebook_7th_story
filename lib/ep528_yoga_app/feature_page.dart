import 'package:flutter/material.dart';

class FeaturePage extends StatefulWidget {
  @override
  _FeaturePageState createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
          elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Placeholder(),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(""))
        ],
      ),
    );
  }
}