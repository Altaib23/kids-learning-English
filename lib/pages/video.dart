import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.pushReplacementNamed(context, 'Pre');
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            sliverAppBar(context, letters, Colors.red),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [],
            ),
          ],
        ),
        drawer: drawer(context),
      ),
    );
  }
}
