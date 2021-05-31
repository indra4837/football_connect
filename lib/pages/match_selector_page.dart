import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/header_logo_back.dart';
import '../components/large_rated.dart';
import '../components/match_line.dart';

class MatchSelectorPageWidget extends StatefulWidget {
  final String imagePath;
  final String location;
  final String rating;
  final String courtName;

  MatchSelectorPageWidget({
    Key key,
    this.imagePath,
    this.location,
    this.rating,
    this.courtName,
  }) : super(key: key);

  @override
  _MatchSelectorPageWidgetState createState() =>
      _MatchSelectorPageWidgetState();
}

class _MatchSelectorPageWidgetState extends State<MatchSelectorPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderLogoBack(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.3,
                child: LargeIcon(
                  widget.imagePath,
                  widget.location,
                  widget.rating,
                  widget.courtName,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MatchLine('08:00', 'AWFC vs Simei Bois', true),
                    MatchLine('10:00', '', false),
                    MatchLine('12:00', 'Costa Ris vs GGMU', true),
                    MatchLine('14:00', '', false),
                    MatchLine('16:00', '', false),
                    MatchLine('18:00', '', false),
                    MatchLine('20:00', '', false),
                    MatchLine('22:00', 'YNWA vs CYG', true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
