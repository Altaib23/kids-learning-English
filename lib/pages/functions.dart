import 'package:flutter/material.dart';
import 'package:kids_learninig_app/pages/variables.dart';

// Text Styles ----------------------------------------------
textStyle(context, double fontSize,
        {Color color = Colors.black,
        FontWeight fontWeight = FontWeight.normal,
        TextDecoration textDecoration = TextDecoration.none,
        Color textBackGroundColor = Colors.transparent}) =>
    TextStyle(
      fontSize: MediaQuery.of(context).size.width / fontSize,
      fontFamily: 'Oswald',
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      backgroundColor: textBackGroundColor,
    );

// Decoration ----------------------------------------------
boxDecoration(
  String image, {
  Color color = Colors.white54,
  Color borderColor = Colors.white,
  double borderWidth = 2,
  double blurRadius = 5,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: borderColor,
      width: borderWidth,
    ),
    boxShadow: [
      BoxShadow(
        blurRadius: blurRadius,
      )
    ],
    image: DecorationImage(
      image: AssetImage(image),
      fit: BoxFit.cover,
    ),
  );
}

// Start Buttons  ----------------------------------------------
startButtuns(String heroTag, Color color, String image, String level,
    String routeName, BuildContext context) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, routeName);
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(
          top: 10,
          right: 20,
          left: 20,
          bottom: 10,
        ),
        decoration: boxDecoration(image, color: color),
        child: Hero(
          tag: heroTag,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            width: double.infinity,
            height: 70,
            alignment: Alignment.center,
            child: Text(
              level,
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 7,
                    offset: Offset.zero,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

// Application Drawer ----------------------------------------------
drawer(BuildContext context) {
  return Drawer(
    child: Container(
      color: Colors.orange[100],
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
              border: Border(
                  bottom: BorderSide(
                color: Colors.red,
                width: 4,
              )),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(splashBG),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Clever Kids Application',
                  style: textStyle(
                    context,
                    13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '  $title  ',
                  style: textStyle(
                    context,
                    20,
                    color: Colors.yellow[100],
                    textBackGroundColor: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          drawerTiles(splashBG, 'Home Page', 'Back to Home Page',
              Colors.grey[200], 'Home', Colors.grey[900], context),
          drawerTiles(preLevel, 'Pre Level', 'Less than 3 years',
              Colors.red[200], 'Pre', Colors.red[900], context),
          drawerTiles(levelOne, 'Level One', '3 to 5 years', Colors.green[200],
              'One', Colors.green[900], context),
          drawerTiles(levelTwo, 'Level Two', 'More than 5 years',
              Colors.blue[200], 'Two', Colors.blue[900], context),
          Divider(
            color: Colors.grey[400],
            height: 10,
            thickness: 3,
          ),
          AboutListTile(
            applicationVersion: '1.0.0',
            applicationIcon: Image.asset(
              appIcon,
              width: 40,
              height: 40,
            ),
            applicationName: title,
            applicationLegalese:
                'Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
            icon: Image.asset(
              appIcon,
              width: 40,
              height: 40,
            ),
          ),
          Divider(
            color: Colors.grey[400],
            height: 10,
            thickness: 3,
          ),
          drawerTiles(
            appIcon,
            'Exit',
            'See you again',
            Colors.red[900],
            'Exit',
            Colors.white,
            context,
            trailIcon: Icons.exit_to_app,
            titleColor: Colors.white,
          ),
        ],
      ),
    ),
  );
}

// Drawer Tiles ----------------------------------------------
drawerTiles(String image, String title, String subtitle, Color color,
    String routeName, Color borderColor, BuildContext context,
    {IconData trailIcon = Icons.play_arrow, Color titleColor = Colors.black}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 5,
    ),
    color: color,
    child: ListTile(
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 75,
        height: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: textStyle(
          context,
          20,
          fontWeight: FontWeight.bold,
          color: titleColor,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: textStyle(
          context,
          25,
          color: titleColor,
        ),
      ),
      trailing: Icon(
        trailIcon,
        size: 40,
        color: borderColor,
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, routeName);
      },
    ),
  );
}

// Sliver AppBar ----------------------------------------------
sliverAppBar(BuildContext context, String image, Color borderColor) {
  return SliverAppBar(
    flexibleSpace: FlexibleSpaceBar(
      background: Hero(
        tag: 'heroPre',
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: borderColor,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ),
    // collapsedHeight: 100,
    expandedHeight: MediaQuery.of(context).size.height / 2.75,
    pinned: true,
  );
}

choseButtuns(String image, String name, Color bgColor, Color txtColor,
    String routeName, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushReplacementNamed(context, routeName);
    },
    child: Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(26),
              bottomRight: Radius.circular(26),
            )),
        width: double.infinity,
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: txtColor,
            fontSize: MediaQuery.of(context).size.width / 18,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
          )
        ],
        border: Border.all(
          color: Colors.red,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    ),
  );
}

//myMenu()
