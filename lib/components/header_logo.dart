import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/search_page.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Builder(
        builder: (context) => IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/drawer.svg',
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SearchPageWidget(),
                  ),
                );
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
    ]);
  }
}
