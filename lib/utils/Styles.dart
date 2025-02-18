import 'package:flutter/material.dart';
import 'package:foods_app/utils/UiColors.dart';

abstract class Styles {
  static var titleStyle = const TextStyle(
    fontFamily: "Gilroy",
    fontSize: 26.0,
    color: UiColors.defaultTitle,
    fontWeight: FontWeight.w900,
  );

  static var subtitleStyle = const TextStyle(
    fontFamily: "GilroyMedium",
    fontSize: 16.0,
    color: UiColors.defaultGray,
  );
}
