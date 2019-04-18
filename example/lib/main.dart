import 'package:flutter/material.dart';
import 'package:component_icons/component_icons.dart';

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
            Icon(IconDataBrands(FontAwesomeBrandId.fa_500px)),
            SizedBox(
              width: 3,
            ),
            Icon(IconDataLight(FontAwesomeId.fa_abacus)),
            SizedBox(
              width: 3,
            ),
            Icon(IconDataSolid(FontAwesomeId.fa_acorn)),
            SizedBox(
              width: 3,
            ),
            Icon(IconDataRegular(FontAwesomeId.fa_acorn)),
          ],
        ),
      ),
    );
  }
}
