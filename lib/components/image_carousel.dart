import 'package:FootballConnect/components/large_rated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width,
      width: 300.0,
      child: Carousel(
        boxFit: BoxFit.fitWidth,
        autoplay: false,
        autoplayDuration: Duration(seconds: 5),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: Colors.black,
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.bottomLeft,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        images: [
          LargeIcon(
            'assets/images/oth_stadium.jpg',
            'Tampines',
            '4.1',
            'Full Field Match',
          ),
          LargeIcon(
            'assets/images/jurong_jc_stadium.jpg',
            'Jurong',
            '3.5',
            'Full Field Match',
          ),
          LargeIcon(
            'assets/images/jalan_besar_stadium.jpg',
            'Jalan Besar',
            '4.5',
            'Full Field Match',
          ),
        ],
      ),
    );
  }
}
