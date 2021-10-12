import 'package:flutter/material.dart';

import '../utilities.dart';

SliderThemeData _mergeSliderTheme(SliderThemeData e1, SliderThemeData e2) =>
    SliderThemeData(
      trackHeight: e2.trackHeight ?? e1.trackHeight,
      activeTrackColor: e2.activeTrackColor ?? e1.activeTrackColor,
      inactiveTrackColor: e2.inactiveTrackColor ?? e1.inactiveTrackColor,
      disabledActiveTrackColor:
          e2.disabledActiveTrackColor ?? e1.disabledActiveTrackColor,
      disabledInactiveTrackColor:
          e2.disabledInactiveTrackColor ?? e1.disabledInactiveTrackColor,
      activeTickMarkColor: e2.activeTickMarkColor ?? e1.activeTickMarkColor,
      inactiveTickMarkColor:
          e2.inactiveTickMarkColor ?? e1.inactiveTickMarkColor,
      disabledActiveTickMarkColor:
          e2.disabledActiveTickMarkColor ?? e1.disabledActiveTickMarkColor,
      disabledInactiveTickMarkColor:
          e2.disabledInactiveTickMarkColor ?? e1.disabledInactiveTickMarkColor,
      thumbColor: e2.thumbColor ?? e1.thumbColor,
      overlappingShapeStrokeColor:
          e2.overlappingShapeStrokeColor ?? e1.overlappingShapeStrokeColor,
      disabledThumbColor: e2.disabledThumbColor ?? e1.disabledThumbColor,
      overlayColor: e2.overlayColor ?? e1.overlayColor,
      valueIndicatorColor: e2.valueIndicatorColor ?? e1.valueIndicatorColor,
      overlayShape: e2.overlayShape ?? e1.overlayShape,
      tickMarkShape: e2.tickMarkShape ?? e1.tickMarkShape,
      thumbShape: e2.thumbShape ?? e1.thumbShape,
      trackShape: e2.trackShape ?? e1.trackShape,
      valueIndicatorShape: e2.valueIndicatorShape ?? e1.valueIndicatorShape,
      rangeTickMarkShape: e2.rangeTickMarkShape ?? e1.rangeTickMarkShape,
      rangeThumbShape: e2.rangeThumbShape ?? e1.rangeThumbShape,
      rangeTrackShape: e2.rangeTrackShape ?? e1.rangeTrackShape,
      rangeValueIndicatorShape:
          e2.rangeValueIndicatorShape ?? e1.rangeValueIndicatorShape,
      showValueIndicator: e2.showValueIndicator ?? e1.showValueIndicator,
      valueIndicatorTextStyle:
          e2.valueIndicatorTextStyle ?? e1.valueIndicatorTextStyle,
      minThumbSeparation: e2.minThumbSeparation ?? e1.minThumbSeparation,
      thumbSelector: e2.thumbSelector ?? e1.thumbSelector,
    );

extension DesireSlider on Slider {
  SliderTheme desire(List desirable) {
    final desires = [
      this,
      ...desirable.map((e) {
        if (e is Slider) return e;
        if (e is SliderTheme) return e.child;

        return e;
      }).whereType<Slider>()
    ];
    final themes = desirable.map((e) {
      if (e is SliderTheme) return e.data;
      if (e is SliderThemeData) return e;

      return null;
    }).whereType<SliderThemeData>();

    return SliderTheme(
      data: themes.reduce((acc, e) => _mergeSliderTheme(acc, e)),
      child: Slider(
        value: value,
        onChanged: onChanged,
        onChangeEnd: onChangeEnd,
        onChangeStart: onChangeStart,
        min: min,
        max: max,
        divisions: mapDesire<int, Slider>(desires, (e) => e.divisions),
        label: label,
        activeColor: mapDesire<Color, Slider>(desires, (e) => e.activeColor),
        inactiveColor:
            mapDesire<Color, Slider>(desires, (e) => e.inactiveColor),
        thumbColor: mapDesire<Color, Slider>(desires, (e) => e.thumbColor),
        mouseCursor:
            mapDesire<MouseCursor, Slider>(desires, (e) => e.mouseCursor),
        semanticFormatterCallback: semanticFormatterCallback,
        focusNode: mapDesire<FocusNode, Slider>(desires, (e) => e.focusNode),
        autofocus: mapDesire<bool, Slider>(desires, (e) => e.autofocus, false)!,
      ),
    );
  }
}
