import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/image_carousel.dart';
import '../components/small_features.dart';

import '../models/get_image_url.dart';

import '../pages/search_page.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var smallIcons = {
    {
      'image': 'kallang_cage.jpg',
      'rating': '4.1',
      'courtName': 'Kallang Cage',
      'time': '12 mins',
      'location': 'Kallang'
    },
    {
      'image': 'kovan_cage.jpg',
      'rating': '3.9',
      'courtName': 'Kovan Cage',
      'time': '5 mins',
      'location': 'Kovan'
    },
    {
      'image': 'pasir_ris_court.jpg',
      'rating': '4.3',
      'courtName': 'Pasir Ris Court',
      'time': '20 mins',
      'location': 'Pasir Ris'
    },
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.07,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
          actions: [
            Builder(
              builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset(
                  'assets/images/drawer.svg',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
              child: Image.asset(
                'assets/images/FootballConnect_logo.png',
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment(1, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SearchPageWidget(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    iconSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
        drawer: Container(
          child: Drawer(
            child: Center(
              child: Text(
                'user profile stuff here',
              ),
            ),
          ),
        ),
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // HeaderLogo(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    maxHeight: 100,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: Container(
                                  width: 50,
                                  height: 100,
                                  constraints: BoxConstraints(
                                    maxWidth: 45,
                                    maxHeight: 25,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD5E5E2),
                                    borderRadius: BorderRadius.circular(29),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0.14, 0.05),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'All',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.alegreyaSans(
                                      textStyle: TextStyle(
                                        color: Color(0xFF5B7D76),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.14, 0.05),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Courts',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.alegreyaSans(
                                textStyle: TextStyle(
                                  color: Color(0xFF666462),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.14, 0.05),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Pitch',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.alegreyaSans(
                                textStyle: TextStyle(
                                  color: Color(0xFF666462),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.14, 0.05),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Match',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.alegreyaSans(
                                textStyle: TextStyle(
                                  color: Color(0xFF666462),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.14, 0.05),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Futsal',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.alegreyaSans(
                                textStyle: TextStyle(
                                  color: Color(0xFF666462),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Featured Games',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alegreyaSans(
                          textStyle: TextStyle(
                            color: Color(0xFF666462),
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: CarouselPage(),
                ),
                // Carousel(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    alignment: Alignment(-1, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Nearby Courts',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Color(0xFF666462),
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: smallIcons
                        .map(
                          (entry) => SmallFeatures(
                            getImageURL(entry['image']),
                            entry['rating'],
                            entry['courtName'],
                            entry['time'],
                            entry['location'],
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
