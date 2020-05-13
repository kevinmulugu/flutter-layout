import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(PavlovaApp());
}

class PavlovaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pavlova App',
      home: buildHomePage('Fucking title'),
    );
  }
}

Widget buildHomePage(String title) {
  final titleText = Text(
    'Strawberry Pavlova',
    style: TextStyle(
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5,
      fontSize: 30
    ),
  );

  final subTitle = Text(
    'Pavlova is a meringue-based dessert named after the Russian ballerina '
          'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
          'topped with fruit and whipped cream.',
    style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25
    ),
    textAlign: TextAlign.center,
  );

  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Icon(Icons.star, color: Colors.green[500],),
      Icon(Icons.star, color: Colors.green[500],),
      Icon(Icons.star, color: Colors.green[500],),
      Icon(Icons.star, color: Colors.black,),
      Icon(Icons.star, color: Colors.black,),
    ],
  );

  final ratings = Container(
    padding: EdgeInsets.all(20.0),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        stars,
        Text(
          '170 Reviews',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.6,
              fontSize: 20
          ),
        )
      ],
    ),
  );

  final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2
  );

  final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('REP'),
                Text('25 min'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.timer, color: Colors.green[500],),
                Text('COOK'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500],),
                Text('FEEDS'),
                Text('4-6'),
              ],
            )
          ],
        ),
      )
  );

  final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      children: <Widget>[
        titleText,
        subTitle,
        ratings,
        iconList
      ],
    ),
  );

  final mainImage = Image.asset(
    'images/pavlova.jpg',
    fit: BoxFit.cover,
  );

  return  Scaffold(
    appBar: AppBar(
      title: Text(title),
      backgroundColor: Colors.pink,
    ),
    body: Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
      height: 600,
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 440,
              child: leftColumn,
            ),
            mainImage
          ],
        ),
      ),
    ),
  );
}

