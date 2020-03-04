import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  VideoPlayerController _controller;
  List ok = ['ok', 'okk', 'noise', 'kid', 'happ'];
  Widget doFoodList(BuildContext context, int index) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var cyberYellow = Color(0xFFFFD301);
    var americanYellow = Color(0xFFF1B900);
    var cetaBlue = Color(0xFF0C005B);
    var navyblue = Color(0xff030081);
    _controller = VideoPlayerController.asset(
      'assets/' + ok[index] + '.mp4',
    );
    _controller.initialize();
    _controller.setLooping(true);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: h * 0.1,
                          width: w * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF846AA7),
                                    Color(0xffE2668B)
                                  ],
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
                                  'Aktiviti ' + (index + 1).toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'spbold',
                                    fontSize: 20,
                                  ),
                                ),
                                Container(
                                  width: w * 0.6,
                                  child: Text(
                                    'Aktiviti khas BBNU!',
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
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: w * 0.4,
                        child: Image.asset('assets/images/loncat.png'),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          
          Container(
            width: w * 0.85,
            child: Chewie(
              controller: ChewieController(videoPlayerController: _controller),
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Container(
              width: w * 0.85,
              child: Text(
                  'Food is any substance consumed to provide nutritional support for an organism. Food is usually of plant or animal origin, and contains essential nutrients, such as carbohydrates, fats, proteins, vitamins, or minerals. The substance is ingested by an organism and assimilated by the organisms cells to provide energy, maintain life, or stimulate growth.'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var cyberYellow = Color(0xFFFFD301);
    var americanYellow = Color(0xFFF1B900);
    var cetaBlue = Color(0xFF0C005B);
    var navyblue = Color(0xff030081);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: w * 0.04,
              ),
              Text(
                'Harian',
                style: TextStyle(
                  color: cetaBlue,
                  fontFamily: 'spbold',
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Container(
            height: h * 0.7,
            child: ListView.builder(
              itemBuilder: doFoodList,
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
