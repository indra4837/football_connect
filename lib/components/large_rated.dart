import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/match_selector_page.dart';

class LargeIcon extends StatelessWidget {
  final String imagePath;
  final String location;
  final String rating;
  final String courtName;

  LargeIcon(
    this.imagePath,
    this.location,
    this.rating,
    this.courtName,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(-0.050000000000000044, 0),
      children: [
        Align(
          alignment: Alignment(0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => MatchSelectorPageWidget(
                            imagePath: imagePath,
                            location: location,
                            rating: rating,
                            courtName: courtName,
                          )));
            },
            child: Image.asset(
              imagePath,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
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
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Stack(
                        alignment: Alignment(-0.75, 0),
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.04,
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width,
                                maxHeight: 72,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFF0D8),
                                borderRadius: BorderRadius.circular(74.56),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.map,
                                color: Color(0xFFD27C4A),
                                size: 20,
                              ),
                              Text(
                                location,
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
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: 50,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1,
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
                                    rating,
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
                padding: EdgeInsets.fromLTRB(5, 100, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        courtName,
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
    );
  }
}
