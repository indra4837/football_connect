import 'package:FootballConnect/pages/search_page.dart';
import 'package:flutter/material.dart';

class HeaderLogoBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Align(
        alignment: Alignment(0, -1),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              iconSize: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(38, 10, 0, 0),
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
          ],
        ),
      ),
    );
  }
}
