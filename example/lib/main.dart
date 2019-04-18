import 'package:flutter/material.dart';
import 'package:component_icons/font_awesome.dart';
import 'package:component_icons/icon_set1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Component icons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.ac_unit),
            SizedBox(
              width: 3,
            ),
            Icon(FontAwesomeBrands(FontAwesomeBrandId.fa_500px)),
            SizedBox(
              width: 3,
            ),
            Icon(FontAwesomeLight(FontAwesomeId.fa_abacus)),
            SizedBox(
              width: 3,
            ),
            Icon(FontAwesomeSolid(FontAwesomeId.fa_acorn)),
            SizedBox(
              width: 3,
            ),
            Icon(FontAwesomeRegular(FontAwesomeId.fa_acorn)),
            SizedBox(
              width: 3,
            ),
            Icon(IconSet1(IconSet1Id.job)),
            SizedBox(
              width: 3,
            ),
            Stack(children: <Widget>[
              Icon(IconSet1(IconSet1Id.onroad_part_1), color: Colors.blue,),
              Icon(IconSet1(IconSet1Id.onroead_part_2), color: Colors.red,)
            ]),
          ],
        ),
      ),
    );
  }
}
