import 'package:flutter/material.dart';

import '../components/search_icons.dart';

import '../models/get_image_url.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({Key key}) : super(key: key);

  @override
  _SearchPageWidgetState createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final searchController = TextEditingController();

  var smallIcons = {
    {
      'image': 'kallang_cage.jpg',
      'rating': '4.1',
      'courtName': 'Kallang Cage',
      'time': '12 mins',
      'location': 'Kallang'
    },
    {
      'image': 'kovan_cage.jpg',
      'rating': '3.9',
      'courtName': 'Kovan Cage',
      'time': '5 mins',
      'location': 'Kovan'
    },
    {
      'image': 'pasir_ris_court.jpg',
      'rating': '4.3',
      'courtName': 'Pasir Ris Court',
      'time': '20 mins',
      'location': 'Pasir Ris'
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 15),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    hintText: 'Futsal, 11 v 11 or cage match?',
                    suffixIcon: const Icon(Icons.search),
                  ),
                  controller: searchController,
                ),
              ),
              Column(
                children: smallIcons
                    .map(
                      (entry) => SearchIcons(
                        getImageURL(entry['image']),
                        entry['rating'],
                        entry['courtName'],
                        entry['time'],
                        entry['location'],
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
