import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../components/large_rated.dart';

import '../models/get_image_url.dart';

class CarouselPage extends StatelessWidget {
  var carouselIcons = {
    {
      'image': 'oth_stadium.jpg',
      'location': 'Tampines',
      'rating': '4.1',
      'stadium': 'OTH Stadium'
    },
    {
      'image': 'jurong_jc_stadium.jpg',
      'location': 'Jurong',
      'rating': '3.5',
      'stadium': 'Jurong JC Stadium'
    },
    {
      'image': 'jalan_besar_stadium.jpg',
      'location': 'Jalan Besar',
      'rating': '4.4',
      'stadium': 'Jalan Besar Stadium'
    },
  };

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
        images: carouselIcons
            .map(
              (entry) => LargeIcon(
                getImageURL(entry['image']),
                entry['location'],
                entry['rating'],
                entry['stadium'],
              ),
            )
            .toList(),
      ),
    );
  }
}
