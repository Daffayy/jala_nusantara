import 'package:dicoding_stepone/detail_screen.dart';
import 'package:dicoding_stepone/expanded_flexible_page.dart';
import 'package:dicoding_stepone/first_screen.dart';
import 'package:dicoding_stepone/home_page.dart';
import 'package:dicoding_stepone/main_screen.dart';
import 'package:dicoding_stepone/rainbow.dart';
import 'package:dicoding_stepone/responsive_page.dart';
import 'package:dicoding_stepone/scrolling_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wisata Bandung",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Oswald",
      ),
      home: const MainScreen(),
    );
  }
}
