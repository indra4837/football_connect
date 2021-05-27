import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Carousel extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  // final List<Widget> widgets = [
  //   Stack(
  //     children: [
  //       Container(
  //         child: Image.asset(
  //           'assets/images/kovan_cage.jpg',
  //           fit: BoxFit.fitWidth,
  //         ),
  //       ),
  //       Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(200),
  //           color: Colors.yellow,
  //         ),
  //         width: 200,
  //         height: 30,
  //         margin: EdgeInsets.all(5.0),
  //         child: Row(
  //           children: [
  //             SizedBox(
  //               width: 10,
  //             ),
  //             Icon(
  //               FontAwesomeIcons.map,
  //             ),
  //             SizedBox(
  //               width: 10,
  //             ),
  //             Text(
  //               "Tampines",
  //               style: GoogleFonts.alegreyaSans(
  //                 textStyle: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 20.0,
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   ),
  //   FittedBox(
  //     child: Image.asset('assets/images/kallang_cage.jpg'),
  //     fit: BoxFit.fill,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: const DecoratedBox(
            decoration: const BoxDecoration(color: Colors.red),
          ),
        ),
        Stack(
          alignment: Alignment(-0.050000000000000044, 0),
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Image.asset(
                'assets/images/oth_stadium.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                fit: BoxFit.fitWidth,
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
                                      MediaQuery.of(context).size.height * 0.04,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: 50,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
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
        FittedBox(
          child: Image.asset('assets/images/kallang_cage.jpg'),
          fit: BoxFit.fill,
        ),
      ],
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 2,
      ),
    );
  }
}
