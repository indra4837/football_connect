import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/match_selector_page.dart';

class SearchIcons extends StatelessWidget {
  final Future<String> imagePath;
  final String rating;
  final String courtName;
  final String time;
  final String location;

  SearchIcons(
    this.imagePath,
    this.rating,
    this.courtName,
    this.time,
    this.location,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: imagePath,
      builder: (context, image) {
        if (image.hasData)
          return new Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.98,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Stack(
                      alignment: Alignment(-0.19999999999999996, -0.25),
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
                            child: CachedNetworkImage(
                              imageUrl: image.data,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
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
                        ),
                        Align(
                          alignment: Alignment(-1, 1.0),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.03,
                              child: Stack(
                                alignment: Alignment(1, 0.3500000000000001),
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
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.timelapse,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          Text(
                                            time,
                                            style: GoogleFonts.openSans(
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.017,
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          courtName,
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              color: Color(0xFF292929),
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        alignment: Alignment(1, 0.3500000000000001),
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  Text(
                                    rating,
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        color: Colors.black,
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
                    ],
                  ),
                ),
              ],
            ),
          );

        return Text("Loading data");
      },
    );
  }
}
