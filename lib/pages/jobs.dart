import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.pushReplacementNamed(context, 'Two');
      },
      child: Scaffold(
        backgroundColor: Colors.orange[300],
        drawer: drawer(context),
        body: CustomScrollView(
          slivers: [
            sliverAppBar(context, levelTwo, Colors.red),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                choseButtuns(letters, 'Learn', Colors.pink[900],
                    Colors.orange[100], ' ', context),
                choseButtuns(numbers, 'Find The Word', Colors.red[900],
                    Colors.yellow, ' ', context),
                choseButtuns(family, 'Find The Picture', Colors.yellow,
                    Colors.blue[900], ' ', context),
                choseButtuns(colors, 'Writing', Colors.green[900], Colors.white,
                    ' ', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
