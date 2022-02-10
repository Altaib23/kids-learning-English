import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class LevelOne extends StatefulWidget {
  @override
  _LevelOneState createState() => _LevelOneState();
}

class _LevelOneState extends State<LevelOne> {
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
            sliverAppBar(context, levelOne, Colors.red),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [
                choseButtuns(letters, 'Letters', Colors.pink[900],
                    Colors.orange[100], ' ', context),
                choseButtuns(numbers, 'Numbers', Colors.red[900], Colors.yellow,
                    '  ', context),
                choseButtuns(family, 'Family', Colors.yellow, Colors.blue[900],
                    ' ', context),
                choseButtuns(colors, 'Colors', Colors.green[900], Colors.white,
                    ' ', context),
                choseButtuns(body, 'Body', Colors.brown[900],
                    Colors.yellow[200], ' ', context),
                choseButtuns(shapes, 'Shapes', Colors.blue[900],
                    Colors.red[200], ' ', context),
                choseButtuns(animals, 'Animals', Colors.green[100],
                    Colors.green[900], ' ', context),
                choseButtuns(fruits, 'Fruits', Colors.orange, Colors.black, ' ',
                    context),
                choseButtuns(
                    jobs, 'Jobs', Colors.grey[900], Colors.white, ' ', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
