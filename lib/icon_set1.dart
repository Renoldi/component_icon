import 'package:flutter/widgets.dart';

class IconSet1 extends IconData {
  const IconSet1(int codePoint)
      : super(
          codePoint,
          fontFamily: 'icon-set1',
          fontPackage: 'component_icons',
        );

  static Container item({required Widget child, required String title}) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            child,
            title.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(title),
                  )
                : Container(
                    width: 0,
                    height: 0,
                  )
          ],
        ));
  }

  static Container items({
    required List<IconSetConfig> iconSetConfigs,
    double size = 25,
    String title = "",
  }) {
    return item(
        child: Stack(
            children: List.generate(iconSetConfigs.length, (index) {
          return Icon(
            IconSet1(iconSetConfigs[index].iconSetId),
            color: iconSetConfigs[index].color,
            size: size,
          );
        })),
        title: title.isNotEmpty ? title : "");
  }
}

class IconSet1Id {
  static const int onroead = 0xe903;
  static const int onroad_part_1 = 0xe901;
  static const int onroead_part_2 = 0xe902;
  static const int job = 0xe900;
  static const int idling_begin_part_1 = 0xe904;
  static const int idling_begin_part_2 = 0xe905;
  static const int idling_begin_part_3 = 0xe906;
  static const int mixer_truck = 0xe907;
  static const int emergency = 0xe909;
  static const int engine = 0xe910;
  static const int eseal_unlock = 0xe911;
  static const int geofence = 0xe912;
  static const int route = 0xe913;
  static const int ecodriving = 0xe914;
  static const int pencil_edit_part1 = 0xe908;
  static const int pencil_edit_part2 = 0xe90a;
  static const int shipment_done = 0xe90b;
  static const int shipment_process = 0xe90b;
  static const int user = 0xe90d;
  static const int key = 0xe90e;
  static const int eye = 0xe90f;
  static const int arrow = 0xe915;
  static const int box_shipment = 0xe916;
  static const int box = 0xe917;
  static const int headphone = 0xe953;
  static const int steer = 0xe954;
  static const int user_alt = 0xe955;
  static const int wallet = 0xe956;
}

class IconSetConfig {
  int iconSetId;
  Color color;

  IconSetConfig({this.iconSetId = 0, required this.color});
}
