import 'package:dicoding_stepone/detail_mobile_page.dart';
import 'package:dicoding_stepone/detail_web_page.dart';
import 'package:dicoding_stepone/favortite_button.dart';
import 'package:dicoding_stepone/models/tourism_place.dart';
import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}
