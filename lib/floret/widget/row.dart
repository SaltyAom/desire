import 'package:flutter/material.dart';

@immutable
// ignore: camel_case_types
class frr {
  const frr() : assert(true, "You shouldn't construct frr (Floret Rpw)");

  static Row mainAxisAlignment(MainAxisAlignment alignment) => Row(
        mainAxisAlignment: alignment,
      );
  static Row main(MainAxisAlignment alignment) => Row(
        mainAxisAlignment: alignment,
      );
  static Row crossAxisAlignment(CrossAxisAlignment alignment) => Row(
        crossAxisAlignment: alignment,
      );
  static Row cross(CrossAxisAlignment alignment) => Row(
        crossAxisAlignment: alignment,
      );

  static final mainStart = Row(
    mainAxisAlignment: MainAxisAlignment.start,
  );
  static final mainCenter = Row(
    mainAxisAlignment: MainAxisAlignment.center,
  );
  static final mainEnd = Row(
    mainAxisAlignment: MainAxisAlignment.end,
  );
  static final mainAround = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
  );
  static final mainBetween = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  );
  static final mainEvenly = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  );

  static final crossStart = Row(
    crossAxisAlignment: CrossAxisAlignment.start,
  );
  static final crossCenter = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
  );
  static final crossEnd = Row(
    crossAxisAlignment: CrossAxisAlignment.end,
  );
  static final crossStretch = Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
  );
  static final stretch = Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
  );
  static final crossBaseline = Row(
    crossAxisAlignment: CrossAxisAlignment.baseline,
  );
  static final baseline = Row(
    crossAxisAlignment: CrossAxisAlignment.baseline,
  );

  static Row textDirection(TextDirection textDirection) => Row(
        textDirection: textDirection,
      );
  static Row ltr(TextDirection textDirection) => Row(
        textDirection: TextDirection.ltr,
      );
  static Row rtl(TextDirection textDirection) => Row(
        textDirection: TextDirection.rtl,
      );
  static Row verticalDirection(VerticalDirection verticalDirection) => Row(
        verticalDirection: verticalDirection,
      );
  static final up = Row(
    verticalDirection: VerticalDirection.up,
  );
  static final down = Row(
    verticalDirection: VerticalDirection.up,
  );

  static Row textBaseline() => Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
      );
  static final alphabetic = Row(
    textBaseline: TextBaseline.alphabetic,
  );
  static final ideographic = Row(
    textBaseline: TextBaseline.ideographic,
  );
}
