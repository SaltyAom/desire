import 'package:flutter/material.dart';

import '../utilities.dart';

extension DesireSlider on Slider {
  Slider desire(List desirable) {
    final desires = [
      this,
      ...desirable.whereType<Slider>(),
    ].toList();

    return Slider(
      value: value,
      onChanged: onChanged,
      onChangeEnd: onChangeEnd,
      onChangeStart: onChangeStart,
      min: min,
      max: max,
      divisions: mapDesire<int, Slider>(desires, (e) => e.divisions),
      label: label,
      activeColor: mapDesire<Color, Slider>(desires, (e) => e.activeColor),
      inactiveColor: mapDesire<Color, Slider>(desires, (e) => e.inactiveColor),
      thumbColor: mapDesire<Color, Slider>(desires, (e) => e.thumbColor),
      mouseCursor:
          mapDesire<MouseCursor, Slider>(desires, (e) => e.mouseCursor),
      semanticFormatterCallback: semanticFormatterCallback,
      focusNode: mapDesire<FocusNode, Slider>(desires, (e) => e.focusNode),
      autofocus: mapDesire<bool, Slider>(desires, (e) => e.autofocus, false)!,
    );
  }
}
