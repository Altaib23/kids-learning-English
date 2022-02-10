import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/level_one.dart';
import 'package:kids_learninig_app/pages/level_two.dart';
import 'package:kids_learninig_app/pages/pre_level.dart';
import 'package:kids_learninig_app/pages/splash_screen.dart';
import 'package:kids_learninig_app/pages/variables.dart';
//import 'package:sqflite/sqflite.dart';
import 'package:kids_learninig_app/pages/home.dart';
import 'package:kids_learninig_app/pages/account.dart';
import 'package:kids_learninig_app/pages/video.dart';
import 'package:kids_learninig_app/pages/jobs.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        'Account': (context) => Account(),

        'Home': (context) => Home(),

        // Main Pages
        'Pre': (context) => PreLevel(),
        'One': (context) => LevelOne(),
        'Two': (context) => LevelTwo(),

        // PreLevel Pages
        'Videos': (context) => Videos(),
        'Exit': (context) => exit(0),

        // level two
        'Jobs': (context) => Jobs(),
      },
      home: SplashScreen(),
    );
  }
}
