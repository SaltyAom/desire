import 'package:flutter/material.dart';

import 'floret.dart';

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

  static Slider division(int division) => Slider(
        value: 0,
        onChanged: null,
        divisions: division,
      );

  static Slider label(String label) => Slider(
        value: 0,
        onChanged: null,
        label: label,
      );

  static FloretParent<SliderThemeData> theme(BuildContext context) =>
      (Widget build) => SliderTheme.of(context);

  static SliderThemeData trackHeight(double height) =>
      SliderThemeData(trackHeight: height);
  static SliderThemeData height(double height) => trackHeight(height);

  static SliderThemeData colorTheme({
    Color? activeTrack,
    Color? inactiveTrack,
    Color? disabledActiveTrack,
    Color? disabledInactiveTrack,
    Color? activeTickMark,
    Color? inactiveTickMark,
    Color? disabledActiveTickMark,
    Color? disabledInactiveTickMark,
    Color? thumb,
    Color? overlappingShapeStroke,
    Color? disabledThumb,
    Color? overlay,
  }) =>
      SliderThemeData(
        activeTrackColor: activeTrack,
        inactiveTrackColor: inactiveTrack,
        disabledActiveTrackColor: disabledActiveTrack,
        disabledInactiveTrackColor: disabledInactiveTrack,
        activeTickMarkColor: activeTickMark,
        inactiveTickMarkColor: inactiveTickMark,
        disabledActiveTickMarkColor: disabledActiveTickMark,
        disabledInactiveTickMarkColor: disabledInactiveTickMark,
        thumbColor: thumb,
        overlappingShapeStrokeColor: overlappingShapeStroke,
        disabledThumbColor: disabledThumb,
        overlayColor: overlay,
      );

  static SliderThemeData trackTheme({
    Color? active,
    Color? inactive,
    Color? disabledActive,
    Color? disabledInactive,
    SliderTrackShape? shape,
    double? height,
  }) =>
      SliderThemeData(
        activeTrackColor: active,
        inactiveTrackColor: inactive,
        disabledActiveTrackColor: disabledActive,
        disabledInactiveTrackColor: disabledInactive,
        trackShape: shape,
        trackHeight: height,
      );

  static SliderThemeData tickTheme({
    Color? active,
    Color? inactive,
    Color? disabledActive,
    Color? disabledInactive,
    SliderTickMarkShape? shape,
    RangeSliderTickMarkShape? rangeShape,
  }) =>
      SliderThemeData(
        activeTickMarkColor: active,
        inactiveTickMarkColor: inactive,
        disabledActiveTickMarkColor: disabledActive,
        disabledInactiveTickMarkColor: disabledInactive,
        tickMarkShape: shape,
        rangeTickMarkShape: rangeShape,
      );

  static SliderThemeData thumbTheme({
    Color? color,
    Color? disabled,
    Thumb? Function(TextDirection, RangeValues, double, Size, Size, double)?
        selector,
    SliderComponentShape? shape,
    double? minSeparation,
    RangeSliderThumbShape? rangeShape,
  }) =>
      SliderThemeData(
        thumbColor: color,
        disabledThumbColor: disabled,
        thumbSelector: selector,
        thumbShape: shape,
        minThumbSeparation: minSeparation,
        rangeThumbShape: rangeShape,
      );

  static SliderThemeData activeTrackColor(Color color) =>
      SliderThemeData(activeTrackColor: color);
  static SliderThemeData inactiveTrackColor(Color color) =>
      SliderThemeData(inactiveTrackColor: color);
  static SliderThemeData disabledActiveTrackColor(Color color) =>
      SliderThemeData(disabledActiveTrackColor: color);
  static SliderThemeData disabledInactiveTrackColor(Color color) =>
      SliderThemeData(disabledInactiveTrackColor: color);

  static SliderThemeData activeTickMarkColor(Color color) =>
      SliderThemeData(activeTickMarkColor: color);
  static SliderThemeData inactiveTickMarkColor(Color color) =>
      SliderThemeData(inactiveTickMarkColor: color);
  static SliderThemeData disabledActiveTickMarkColor(Color color) =>
      SliderThemeData(disabledActiveTickMarkColor: color);
  static SliderThemeData disabledInactiveTickMarkColor(Color color) =>
      SliderThemeData(disabledInactiveTickMarkColor: color);

  static SliderThemeData thumbColor(Color color) =>
      SliderThemeData(thumbColor: color);
  static SliderThemeData overlappingShapeStrokeColor(Color color) =>
      SliderThemeData(overlappingShapeStrokeColor: color);
  static SliderThemeData disabledThumbColor(Color color) =>
      SliderThemeData(disabledThumbColor: color);
  static SliderThemeData overlayColor(Color color) =>
      SliderThemeData(overlayColor: color);

  static SliderThemeData valueIndicatorColor(Color color) =>
      SliderThemeData(valueIndicatorColor: color);
  static SliderThemeData overlayShape(SliderComponentShape shape) =>
      SliderThemeData(overlayShape: shape);
  static SliderThemeData tickMarkShape(SliderTickMarkShape shape) =>
      SliderThemeData(tickMarkShape: shape);
  static SliderThemeData thumbShape(SliderComponentShape shape) =>
      SliderThemeData(thumbShape: shape);
  static SliderThemeData trackShape(SliderTrackShape shape) =>
      SliderThemeData(trackShape: shape);
  static SliderThemeData valueVindicatorShape(SliderComponentShape shape) =>
      SliderThemeData(valueIndicatorShape: shape);
  static SliderThemeData rangeTickMarkShape(RangeSliderTickMarkShape shape) =>
      SliderThemeData(rangeTickMarkShape: shape);
  static SliderThemeData rangeTrackShape(RangeSliderTrackShape shape) =>
      SliderThemeData(rangeTrackShape: shape);
  static SliderThemeData rangeValueIndicatorShape(
          RangeSliderValueIndicatorShape shape) =>
      SliderThemeData(rangeValueIndicatorShape: shape);
  static SliderThemeData showValueIndicator(ShowValueIndicator shape) =>
      SliderThemeData(showValueIndicator: shape);

  static SliderThemeData valueIndicatorTextStyle(TextStyle style) =>
      SliderThemeData(valueIndicatorTextStyle: style);
  static SliderThemeData minThumbSeparation(double separation) =>
      SliderThemeData(minThumbSeparation: separation);

  static SliderThemeData thumbSelector(
          Thumb? Function(
                  TextDirection, RangeValues, double, Size, Size, double)
              builder) =>
      SliderThemeData(thumbSelector: builder);
}
