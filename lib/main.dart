import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:spp/Daily.dart';
import 'package:spp/Food.dart';
import 'package:spp/home.dart';
import 'package:spp/stretch.dart';
import 'package:spp/tips.dart';

void main() => runApp(MainMain());

class MainMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  var cyberYellow = Color(0xFFFFD301);
  var americanYellow = Color(0xFFF1B900);
  var cetaBlue = Color(0xFF0C005B);
  PageController controller;
  int selectedIndex = 2;

  @override
  void initState() {
    controller = PageController(initialPage: 2);
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      // selectedIndex = index;
      if (controller.hasClients) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn,
        );
      }
    });
  }

  void onPageChanged(int pagenum) {
    setState(() {
      selectedIndex = pagenum;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            // centerTitle: true,
            title: Icon(
              FontAwesome.bars,
              color: cetaBlue,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FontAwesome.book, size: 30),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    'Tips',
                    style: TextStyle(
                      color: cetaBlue,
                      fontFamily: 'spbold',
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesome.child,
                  size: 30,
                ),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    'Regangan',
                    style: TextStyle(
                      color: cetaBlue,
                      fontFamily: 'spbold',
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesome.home, size: 30),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    'Utama',
                    style: TextStyle(
                      color: cetaBlue,
                      fontFamily: 'spbold',
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesome.calendar, size: 30),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    'Harian',
                    style: TextStyle(
                      color: cetaBlue,
                      fontFamily: 'spbold',
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesome.lemon_o, size: 30),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    'Makanan',
                    style: TextStyle(
                      color: cetaBlue,
                      fontFamily: 'spbold',
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: americanYellow,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),
          body: Column(
            children: <Widget>[
              SizedBox(
                height: h * 0.04,
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  onPageChanged: onPageChanged,
                  children: <Widget>[
                    Tips(),
                    Str(),
                    Home(),
                    Daily(),
                    Food(),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
