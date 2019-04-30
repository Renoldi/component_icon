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
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Wrap(
          children: <Widget>[
            Divider(),
            Center(child: Text("font awesome brand")),
            Divider(),
            item(
                child: Icon(FontAwesomeBrands(FontAwesomeBrandId.fa_500px)),
                title: "fa_500px"),
            Divider(),
            Center(child: Text("font awesome pro (solid/regular/light)")),
            Divider(),
            fontAwesomeItem(FontAwesomeId.fa_abacus, "fa_abacus"),
            fontAwesomeItem(FontAwesomeId.fa_home, "fa_home"),
            Divider(),
            Center(child: Text("icon set1")),
            Divider(),
            item(
                child: Stack(children: <Widget>[
                  Icon(
                    IconSet1(IconSet1Id.onroad_part_1),
                    color: Colors.blue,
                  ),
                  Icon(
                    IconSet1(IconSet1Id.onroead_part_2),
                    color: Colors.red,
                  )
                ]),
                title: "onroad"),
          ],
        ),
      ),
    );
  }

  Container item({Widget child, String title}) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            child,
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(title),
            )
          ],
        ));
  }

  Row fontAwesomeItem(int fontAwesomeId, String title) {
    return Row(
      children: <Widget>[
        item(child: Icon(FontAwesomeSolid(fontAwesomeId)), title: title),
        item(child: Icon(FontAwesomeRegular(fontAwesomeId)), title: title),
        item(child: Icon(FontAwesomeLight(fontAwesomeId)), title: title),
      ],
    );
  }
}
