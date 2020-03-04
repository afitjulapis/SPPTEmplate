import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
                'Utama',
                style: TextStyle(
                  color: cetaBlue,
                  fontFamily: 'spbold',
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // SizedBox(width: w*0.04,),
              Container(
                height: h * 0.3,
                width: w * 0.4,
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: h * 0.15,
                        ),
                        Container(
                          height: h * 0.15,
                          width: w * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  colors: [Colors.blue, cetaBlue],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                    offset: Offset(0, 5),
                                    color: Colors.grey)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Baca Buku',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'spbold',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: h * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: w * 0.35,
                                child: Image.asset('assets/images/read.png')),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(width: w*0.1,),
              Container(
                height: h * 0.3,
                width: w * 0.4,
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: h * 0.15,
                        ),
                        Container(
                          height: h * 0.15,
                          width: w * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  colors: [Colors.pink, Colors.red],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                    offset: Offset(0, 5),
                                    color: Colors.grey)
                              ]),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Brader Botak',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'spbold',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: h * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: w * 0.26,
                                child: Image.asset('assets/images/some.png')),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: h * 0.15,
            width: w * 0.85,
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
                      width: w * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              colors: [Colors.yellow, Colors.orange],
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Pelbagai menu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'spbold',
                                    fontSize: 20,
                                  ),
                                ),
                                Container(
                                  width: w * 0.6,
                                  child: Text(
                                    'Macam macam boleh',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'spartan',
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
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
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: w * 0.4,
                        child: Image.asset('assets/images/dude.png'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: h * 0.15,
            width: w * 0.85,
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
                      width: w * 0.85,
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
                                  'Pelbagai menu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'spbold',
                                    fontSize: 20,
                                  ),
                                ),
                                Container(
                                  width: w * 0.6,
                                  child: Text(
                                    'Macam macam boleh',
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
              ],
            ),
          ),
          SizedBox(height: h*0.05,)
        ],
      ),
    );
  }
}
