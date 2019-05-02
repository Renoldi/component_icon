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
      body: ListView(
        children: <Widget>[
          Container(
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
                fontAwesomeItem(
                    FontAwesomeId.fa_draw_polygon, "fa_draw_polygon"),
                fontAwesomeItem(FontAwesomeId.fa_route, "fa_route"),
                fontAwesomeItem(FontAwesomeId.fa_tachometer_slowest,
                    "fa_tachometer_slowest"),
                fontAwesomeItem(
                    FontAwesomeId.fa_tachometer_slow, "fa_tachometer_slowest"),
                fontAwesomeItem(FontAwesomeId.fa_tachometer_average,
                    "fa_tachometer_slowest"),
                fontAwesomeItem(FontAwesomeId.fa_route, "fa_route"),
                fontAwesomeItem(
                    FontAwesomeId.fa_route_highway, "fa_route_highway"),
                fontAwesomeItem(
                    FontAwesomeId.fa_route_interstate, "fa_route_interstate"),
                fontAwesomeItem(FontAwesomeId.fa_satellite, "fa_satellite"),
                fontAwesomeItem(
                    FontAwesomeId.fa_satellite_dish, "fa_satellite_dish"),
                fontAwesomeItem(
                    FontAwesomeId.fa_thermometer_half, "fa_thermometer_half"),
                fontAwesomeItem(
                    FontAwesomeId.fa_thermometer_empty, "fa_thermometer_empty"),
                fontAwesomeItem(
                    FontAwesomeId.fa_thermometer_full, "fa_thermometer_full"),
                fontAwesomeItem(FontAwesomeId.fa_bell, "fa_bell"),
                fontAwesomeItem(FontAwesomeId.fa_bell_school, "fa_bell_school"),
                fontAwesomeItem(FontAwesomeId.fa_bells, "fa_bells"),
                Divider(),
                Center(child: Text("icon set1")),
                Divider(),
                items(iconSetConfigs: <IconSetConfig>[
                  IconSetConfig(
                      iconSetId: IconSet1Id.onroad_part_1, color: Colors.red),
                  IconSetConfig(
                      iconSetId: IconSet1Id.onroead_part_2, color: Colors.blue),
                ], title: "onroad"),
                items(iconSetConfigs: <IconSetConfig>[
                  IconSetConfig(
                      iconSetId: IconSet1Id.idling_begin_part_1,
                      color: Colors.red),
                  IconSetConfig(
                      iconSetId: IconSet1Id.idling_begin_part_2,
                      color: Colors.green),
                  IconSetConfig(
                      iconSetId: IconSet1Id.idling_begin_part_3,
                      color: Colors.blue),
                ], title: "idling_begin"),
                item(
                    child: Icon(IconSet1(IconSet1Id.mixer_truck)),
                    title: "mixer_truck"),
                item(
                    child: Icon(IconSet1(IconSet1Id.engine)),
                    title: "engine"),
                item(
                    child: Icon(IconSet1(IconSet1Id.emergency)),
                    title: "emergency"),
                item(
                    child: Icon(IconSet1(IconSet1Id.eseal_unlock)),
                    title: "eseal_unlock"),
                item(
                    child: Icon(IconSet1(IconSet1Id.geofence)),
                    title: "geofence"),
                item(
                    child: Icon(IconSet1(IconSet1Id.route)),
                    title: "route"),
                item(
                    child: Icon(IconSet1(IconSet1Id.ecodriving)),
                    title: "ecodriving"),
              ],
            ),
          ),
        ],
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

  Container items(
      {List<IconSetConfig> iconSetConfigs,
      double size = 25,
      String title = "title"}) {
    return item(
        child: Stack(
            children: List.generate(iconSetConfigs.length, (index) {
          return Icon(
            IconSet1(iconSetConfigs[index].iconSetId),
            color: iconSetConfigs[index].color,
            size: size,
          );
        })),
        title: title);
  }

  Column fontAwesomeItem(int fontAwesomeId, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            title,
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            item(child: Icon(FontAwesomeSolid(fontAwesomeId)), title: "bold"),
            item(
                child: Icon(FontAwesomeRegular(fontAwesomeId)),
                title: "regular"),
            item(child: Icon(FontAwesomeLight(fontAwesomeId)), title: "light"),
          ],
        ),
      ],
    );
  }
}
