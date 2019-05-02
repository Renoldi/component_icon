import 'package:flutter/widgets.dart';

class IconSet1 extends IconData {
  const IconSet1(int codePoint)
      : super(
          codePoint,
          fontFamily: 'icon-set1',
          fontPackage: 'component_icons',
        );
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
  static const int engine = 0xe910;
}

class IconSetConfig {
  int iconSetId;
  Color color;

  IconSetConfig({this.iconSetId = 0, this.color});
}
