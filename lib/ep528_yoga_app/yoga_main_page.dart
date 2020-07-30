import 'package:flutter/material.dart';

class YogaMainPage extends StatefulWidget {
  @override
  _YogaMainPageState createState() => _YogaMainPageState();
}

class _YogaMainPageState extends State<YogaMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2020/07/06/07/19/meditate-5375835_960_720.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
          )
        ],
      ),
    );
  }
}






















