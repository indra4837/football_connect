import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/match_selector_page.dart';

class SmallFeatures extends StatelessWidget {
  final Future<String> imagePath;
  final String rating;
  final String courtName;
  final String time;
  final String location;

  SmallFeatures(
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
                            // child: imagePath != null
                            //     ? CachedNetworkImage(
                            //         imageUrl: imagePath,
                            //         placeholder: (context, url) =>
                            //             CircularProgressIndicator(),
                            //         errorWidget: (context, url, error) =>
                            //             Icon(Icons.error),
                            //       )
                            //     : CircularProgressIndicator(),
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
                            // child: image.hasData
                            //     ? Image.network(
                            //         image.data,
                            //         width: MediaQuery.of(context).size.width,
                            //         height:
                            //             MediaQuery.of(context).size.height * 1,
                            //         fit: BoxFit.cover,
                            //       )
                            //     : image.error.toString(),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.9, -1.06),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: 30,
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
                          courtName,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              time,
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
          );
        return Text("Loading data");
      },
    );
  }
}
