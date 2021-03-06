import 'package:flutter/material.dart';

import 'feature_page.dart';

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
                        image:
                            NetworkImage("https://cdn.pixabay.com/photo/2020/07/06/07/19/meditate-5375835_960_720.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      right: 16,
                      child: CircleAvatar(
                        radius: 64,
                        backgroundColor: Colors.deepOrangeAccent[100],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 0,
                      bottom: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text("to your yoga")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Daily Exercise",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text("View All"),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>FeaturePage()
                            ));
                          },
                        )
                      ],
                    ),
                    Container(
                      height: 240,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2019/12/31/16/06/yoga-4732209__340.jpg"),
                                            fit: BoxFit.cover)),
                                  )),
                                  Expanded(
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upward-Facing Dog",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                              (index) => Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Colors.orange,
                                                  )).toList(),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                                        style: TextStyle(
                                          fontSize: 12,

                                        ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              width: MediaQuery.of(context).size.width / 2,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Goals",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text("View All"),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Container(
                      height: 240,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 16),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2019/12/31/16/06/yoga-4732209__340.jpg"),
                                                fit: BoxFit.cover)),
                                      )),
                                  Expanded(
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Upward-Facing Dog",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: List.generate(
                                              5,
                                                  (index) => Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.orange,
                                              )).toList(),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                                          style: TextStyle(
                                            fontSize: 12,

                                          ),
                                          overflow: TextOverflow.fade,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              width: MediaQuery.of(context).size.width / 2,
                            );
                          }),
                    )
                  ],
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
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(""))
        ],
      ),
    );
  }
}
