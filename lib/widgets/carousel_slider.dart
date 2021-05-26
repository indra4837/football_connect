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
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            // border: Border.all(
            //   color: Colors.grey[300],
            // ),
          ),
          child: CarouselSlider(
            items: [
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/kovan_cage.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.yellow,
                    ),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 30,
                    margin: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          FontAwesomeIcons.map,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tampines",
                          style: GoogleFonts.alegreyaSans(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
          ),
        ),
      ]);
}
