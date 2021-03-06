import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        "https://player.vimeo.com/external/142621447.mobile.mp4?s=029702dbab1598537678ebfc7a6f500bc160608a&profile_id=116")
      ..initialize().then((value) async {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(color: Colors.blue),
                child: Stack(children: [
                  VideoPlayer(_videoPlayerController),
                  InkWell(
                    onTap: () {
                      _videoPlayerController.play();
                    },
                    child: Center(
                      child: CircleAvatar(
                        radius: 48,
                        backgroundColor: Colors.black.withOpacity(0.4),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white.withOpacity(0.8),
                          size: 64,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Crane Pose",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.chat_bubble_outline),
                  Text("2,102"),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.favorite_border),
                  Text("2,102")
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.all(9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Great For",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Placeholder(),
                        ),
                        Expanded(
                          child: Placeholder(),
                        ),
                        Expanded(
                          child: Placeholder(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              padding: EdgeInsets.all(9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      "About this pose",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do"
                            " eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                            "Ut enim ad minim veniam, quis nostrud exercitation ullamco labo"
                            "ris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor "
                            "in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla p"
                            "ariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui offi"
                            "cia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
