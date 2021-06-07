import 'package:flutter/material.dart';

import '../components/header_logo_back.dart';
import '../components/large_rated.dart';
import '../components/match_line.dart';

import '../pages/make_booking_page.dart';

class MatchSelectorPageWidget extends StatefulWidget {
  final Future<String> imagePath;
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

  var matchList = {
    {'time': '0800', 'match': '', 'booked': false},
    {'time': '1000', 'match': 'Costa Ris vs GGMU', 'booked': true},
    {'time': '1200', 'match': '', 'booked': false},
    {'time': '1400', 'match': '', 'booked': false},
    {'time': '1600', 'match': 'AWFC vs Simei Bois', 'booked': true},
    {'time': '1800', 'match': '', 'booked': false},
    {'time': '2000', 'match': 'YNWA vs CYG', 'booked': true},
  };

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
              Column(
                children: matchList
                    .map(
                      (entry) => GestureDetector(
                        child: MatchLine(
                            entry['time'], entry['match'], entry['booked']),
                        onTap: () {
                          if (!entry['booked']) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => MakeBookingPageWidget(
                                  imagePath: widget.imagePath,
                                  location: widget.location,
                                  rating: widget.rating,
                                  courtName: widget.courtName,
                                  time: entry['time'],
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
