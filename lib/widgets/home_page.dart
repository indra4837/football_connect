import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Align(
                  alignment: Alignment(0, -1),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
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
                                print('SearchButton pressed ...');
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
                ),
              ),
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
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.14, 0.05),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                    Align(
                      alignment: Alignment(0.14, 0.05),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                    Align(
                      alignment: Alignment(0.14, 0.05),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                    Align(
                      alignment: Alignment(0.14, 0.05),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                      'Available Games',
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
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Stack(
                  alignment: Alignment(-0.050000000000000044, 0),
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: Image.asset(
                        'assets/images/oth_stadium.jpg',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Stack(
                                    alignment: Alignment(-0.75, 0),
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context)
                                                .size
                                                .width,
                                            maxHeight: 72,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFF0D8),
                                            borderRadius:
                                                BorderRadius.circular(74.56),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.map,
                                            color: Color(0xFFD27C4A),
                                            size: 20,
                                          ),
                                          Text(
                                            'Tampines',
                                            style: GoogleFonts.alegreyaSans(
                                              textStyle: TextStyle(
                                                color: Color(0xFFD27C4A),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              Text(
                                                '4.1',
                                                style: GoogleFonts.openSans(
                                                  textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 130, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    'Full Field Match',
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Stack(
                                alignment:
                                    Alignment(-0.19999999999999996, -0.25),
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Image.asset(
                                      'assets/images/kallang_cage.jpg',
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.9, -1.06),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 10, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 30,
                                        child: Stack(
                                          alignment:
                                              Alignment(1, 0.3500000000000001),
                                          children: [
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      '4.1',
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Kallang Cage',
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 19,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Text(
                                        '12 mins',
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            color: Color(0xFF5B7D76),
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Stack(
                                alignment:
                                    Alignment(-0.19999999999999996, -0.25),
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Image.asset(
                                      'assets/images/kovan_cage.jpg',
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.9, -1.06),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 10, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 30,
                                        child: Stack(
                                          alignment:
                                              Alignment(1, 0.3500000000000001),
                                          children: [
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      '3.9',
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Kovan Cage',
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 19,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Text(
                                        '5 mins',
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            color: Color(0xFF5B7D76),
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Stack(
                                alignment:
                                    Alignment(-0.19999999999999996, -0.25),
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Image.asset(
                                      'assets/images/pasir_ris_court.jpg',
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.9, -1.06),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 10, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        height: 30,
                                        child: Stack(
                                          alignment:
                                              Alignment(1, 0.3500000000000001),
                                          children: [
                                            Align(
                                              alignment: Alignment(0, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                    Text(
                                                      '4.3',
                                                      style:
                                                          GoogleFonts.openSans(
                                                        textStyle: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Pasir Ris Court',
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Color(0xFF292929),
                                        fontSize: 19,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timelapse,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Text(
                                        '20 mins',
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            color: Color(0xFF5B7D76),
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
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
