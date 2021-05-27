import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchLine extends StatelessWidget {
  final String time;
  final String match;
  final bool highlight;

  MatchLine(this.time, this.match, this.highlight);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.98,
      decoration: BoxDecoration(
        color: highlight ? Colors.grey.shade400 : Colors.transparent,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: Icon(
                  Icons.timelapse,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    time,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: Text(match),
          ),
        ],
      ),
    );
  }
}
