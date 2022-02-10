import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: appbar(false),
      drawer: drawer(context),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: [
            startButtuns(
                'heroPre', Colors.red, preLevel, 'Pre Level', 'Pre', context),
            startButtuns(
                'heroOne', Colors.green, levelOne, 'Level One', 'One', context),
            startButtuns(
                'hroTwo', Colors.blue, levelTwo, 'Level Two', 'Two', context),
          ],
        ),
      ),
    );
  }

  AppBar appbar(bool centerTitle) {
    return AppBar(
      title: Text(
        title,
        style: textStyle(context, 15, color: Colors.white),
      ),
      centerTitle: true,
    );
  }
}
