import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/match_selector_page.dart';

class LargeIcon extends StatelessWidget {
  final Future<String> imagePath;
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
    return FutureBuilder(
      future: imagePath,
      builder: (context, image) {
        if (image.hasData)
          return Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              alignment: Alignment(-0.050000000000000044, 0),
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: CachedNetworkImage(
                    imageUrl: image.data,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(
                      Icons.error,
                    ), //// YOU CAN CREATE YOUR OWN ERROR WIDGET HERE
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
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width,
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
                              height: MediaQuery.of(context).size.height * 0.04,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
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
                        padding: EdgeInsets.fromLTRB(10, 110, 0, 0),
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
                ),
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
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        return Text("Loading");
      },
    );
  }
}
