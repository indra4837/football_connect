import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            height: 100.0,
            width: 190.0,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
            ),
            child: Center(
              child: Image.asset('assets/images/FootballConnect_logo.png'),
            ),
          ),
        ),
        Carousel(),
        Container(
          child: Text(
            "test",
            style: GoogleFonts.alegreyaSans(
                textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            )),
          ),
        ),
      ],
    ));
  }
}
