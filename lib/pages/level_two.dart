import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/functions.dart';
import 'package:kids_learninig_app/pages/variables.dart';

class LevelTwo extends StatefulWidget {
  @override
  _LevelTwoState createState() => _LevelTwoState();
}

class _LevelTwoState extends State<LevelTwo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.pushReplacementNamed(context, 'Home');
      },
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent[300],
        drawer: drawer(context),
        body: CustomScrollView(
          slivers: [
            sliverAppBar(context, levelTwo, Colors.red),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                choseButtuns(months, 'Months', Colors.pink[900],
                    Colors.orange[100], ' ', context),
                choseButtuns(
                    days, 'Days', Colors.red[900], Colors.yellow, ' ', context),
                choseButtuns(job, 'Jobs', Colors.yellow, Colors.blue[900],
                    'Jobs', context),
                choseButtuns(sports, 'Sports', Colors.green[900], Colors.white,
                    ' ', context),
                choseButtuns(transports, 'Transports', Colors.brown[900],
                    Colors.yellow[200], ' ', context),
                choseButtuns(countries, 'Countries', Colors.blue[900],
                    Colors.red[200], ' ', context),
                choseButtuns(school, 'School Objects', Colors.blue[900],
                    Colors.red[200], ' ', context),
                choseButtuns(verbs, 'Verbs', Colors.green[100],
                    Colors.green[900], ' ', context),
                choseButtuns(clothes, 'Clothes', Colors.orange, Colors.black,
                    ' ', context),
                choseButtuns(foods, 'Foods', Colors.grey[900], Colors.white,
                    ' ', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
