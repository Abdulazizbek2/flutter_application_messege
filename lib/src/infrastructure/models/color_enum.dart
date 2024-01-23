import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';

List<Color> getcolor(String color) {
  if (ColorAcount.green.toString() == color) {
    return [Style.greenFon1, Style.greenFon2];
  } else if (ColorAcount.blue.toString() == color) {
    return [Style.blueFon1, Style.blueFon2];
  } else if (ColorAcount.orange.toString() == color) {
    return [Style.orangeFon1, Style.orangeFon2];
  } else {
    return [Style.greenFon1, Style.greenFon2];
  }
}

enum ColorAcount {
  green,
  blue,
  orange,
}
