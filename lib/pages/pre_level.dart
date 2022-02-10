import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class PreLevel extends StatefulWidget {
  @override
  _PreLevelState createState() => _PreLevelState();
}

class _PreLevelState extends State<PreLevel> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.pushReplacementNamed(context, 'Home');
      },
      child: Scaffold(
        backgroundColor: Colors.yellow[300],
        drawer: drawer(context),
        body: CustomScrollView(
          slivers: [
            sliverAppBar(context, preLevel, Colors.red),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [
                choseButtuns(letters, 'Letters', Colors.pink[900],
                    Colors.orange[100], 'Videos', context),
                choseButtuns(numbers, 'Numbers', Colors.red[900], Colors.yellow,
                    'Videos', context),
                choseButtuns(family, 'Family', Colors.yellow, Colors.blue[900],
                    'Videos', context),
                choseButtuns(colors, 'Colors', Colors.green[900], Colors.white,
                    'Videos', context),
                choseButtuns(body, 'Body', Colors.brown[900],
                    Colors.yellow[200], 'Videos', context),
                choseButtuns(shapes, 'Shapes', Colors.blue[900],
                    Colors.red[200], 'Videos', context),
                choseButtuns(animals, 'Animals', Colors.green[100],
                    Colors.green[900], 'Videos', context),
                choseButtuns(fruits, 'Fruits', Colors.orange, Colors.black,
                    'Videos', context),
                choseButtuns(jobs, 'Jobs', Colors.grey[900], Colors.white,
                    'Videos', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
