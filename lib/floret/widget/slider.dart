import 'package:flutter/material.dart';

@immutable
// ignore: camel_case_types
class frsl {
  const frsl() : assert(true, "You shouldn't construct frs (Floret Slider)");

  static Slider color({Color? active, Color? inactive, Color? thumb}) => Slider(
        value: 0,
        onChanged: null,
        activeColor: active,
        inactiveColor: inactive,
        thumbColor: thumb,
      );

  static Slider autoColor(Color color) => Slider(
        value: 0,
        onChanged: null,
        activeColor: color,
        thumbColor: color,
        inactiveColor: color.withOpacity(.25),
      );
}
