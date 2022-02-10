import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, "Home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[900],
      body: Hero(
        tag: 'heroOne',
        child: Container(
          height: double.infinity,
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.only(top: 5, right: 40, left: 40, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: textStyle(context, 9),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(splashBG),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
