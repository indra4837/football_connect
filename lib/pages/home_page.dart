import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/image_carousel.dart';
import '../components/header_logo.dart';
import '../components/small_features.dart';

import '../models/get_image_url.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // final FirebaseStorage storage = FirebaseStorage.instanceFor(
  //     app: FirebaseFirestore.instance.app,
  //     bucket: 'gs://football-connect-94b47.appshot.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderLogo(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
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
                  children: [
                    SmallFeatures(
                      // 'assets/images/kallang_cage.jpg',
                      getImageURL('kallang_cage.jpg'),
                      '4.1',
                      'Kallang Cage',
                      '12 mins',
                      'Kallang',
                    ),
                    SmallFeatures(
                      // 'assets/images/kovan_cage.jpg',
                      getImageURL('kovan_cage.jpg'),
                      '3.9',
                      'Kovan Cage',
                      '5 mins',
                      'Kovan',
                    ),
                    SmallFeatures(
                      getImageURL('pasir_ris_court.jpg'),
                      '4.3',
                      'Pasir Ris Court',
                      '20 mins',
                      'Pasir Ris',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
