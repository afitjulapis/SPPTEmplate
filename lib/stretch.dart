import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Str extends StatefulWidget {
  Str({Key key}) : super(key: key);
  @override
  _StrState createState() => _StrState();
}

class _StrState extends State<Str> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(
      'assets/okk.mp4',
    );
    _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var cyberYellow = Color(0xFFFFD301);
    var americanYellow = Color(0xFFF1B900);
    var cetaBlue = Color(0xFF0C005B);
    var navyblue = Color(0xff030081);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: w * 0.04,
                ),
                Text(
                  'Regangan',
                  style: TextStyle(
                    color: cetaBlue,
                    fontFamily: 'spbold',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
              height: h * 0.15,
              width: w * 0.9,
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: h * 0.0,
                      ),
                      Container(
                        height: h * 0.1,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                colors: [Colors.purpleAccent, Colors.blue],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 8,
                                  spreadRadius: 1,
                                  offset: Offset(0, 5),
                                  color: Colors.grey)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Kansei Drifto',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'spbold',
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                width: w * 0.6,
                                child: Text(
                                  'Nani ??!!!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'spartan',
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/images/dude.png'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: h*0.05,),
            Container(
              width: w*0.9,
              child: AspectRatio(
                aspectRatio: 1.5,
                // Use the VideoPlayer widget to display the video.
                child: VideoPlayer(_controller),
              ),
            ),
            SizedBox(height: h*0.05,),
            Container(
              width: w*0.8,
              child: Text('A hella badass inertia drift, made by professional drivers and street racers. The phrase is largely associated with the first episode of the popular anime Initial D, where the phrase'),
            )
          ],
        ),
      ),
    );
  }
}
