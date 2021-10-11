import 'package:flutter/material.dart';

@immutable
// ignore: camel_case_types
class fra {
  const fra() : assert(true, "You shouldn't construct fra (Floret Alert)");

  static AlertDialog titlePadding(EdgeInsets padding) =>
      AlertDialog(titlePadding: padding);
  static AlertDialog titleTextStyle(TextStyle style) =>
      AlertDialog(titleTextStyle: style);
  static AlertDialog titleStyle(TextStyle style) => titleTextStyle(style);

  static AlertDialog content(Widget widget) => AlertDialog(content: widget);
  static AlertDialog contentPadding(EdgeInsets padding) =>
      AlertDialog(titlePadding: padding);
  static AlertDialog contentTextStyle(TextStyle style) =>
      AlertDialog(contentTextStyle: style);
  static AlertDialog contentStyle(TextStyle style) => contentTextStyle(style);

  static AlertDialog actions(List<Widget> actions) =>
      AlertDialog(actions: actions);
  static AlertDialog actionsPadding(EdgeInsets padding) =>
      AlertDialog(actionsPadding: padding);

  static AlertDialog actionsAlignment(MainAxisAlignment alignment) =>
      AlertDialog(actionsAlignment: alignment);
  static const actionsStart =
      AlertDialog(actionsAlignment: MainAxisAlignment.start);
  static const actionsCenter =
      AlertDialog(actionsAlignment: MainAxisAlignment.center);
  static const actionsEnd =
      AlertDialog(actionsAlignment: MainAxisAlignment.end);
  static const actionsAround =
      AlertDialog(actionsAlignment: MainAxisAlignment.spaceAround);
  static const actionsBetween =
      AlertDialog(actionsAlignment: MainAxisAlignment.spaceBetween);
  static const actionsEvenly =
      AlertDialog(actionsAlignment: MainAxisAlignment.spaceEvenly);

  static AlertDialog actionsOverflowDirection(
          VerticalDirection verticalDirection) =>
      AlertDialog(actionsOverflowDirection: verticalDirection);
  static const actionsVerticalUp =
      AlertDialog(actionsOverflowDirection: VerticalDirection.up);
  static const actionsVerticalDown =
      AlertDialog(actionsOverflowDirection: VerticalDirection.down);

  static AlertDialog actionsOverflowButtonSpacing(double spacing) =>
      AlertDialog(actionsOverflowButtonSpacing: spacing);

  static AlertDialog buttonPadding(EdgeInsets padding) =>
      AlertDialog(actionsPadding: padding);

  static AlertDialog backgroundColor(Color color) =>
      AlertDialog(backgroundColor: color);
  static AlertDialog bg(Color color) => backgroundColor(color);

  static AlertDialog elevation(double elevation) =>
      AlertDialog(elevation: elevation);
  static AlertDialog semanticLabel(String label) =>
      AlertDialog(semanticLabel: label);

  static AlertDialog insetPadding(EdgeInsets padding) =>
      AlertDialog(insetPadding: padding);

  static AlertDialog clipBehavior(Clip clip) => AlertDialog(clipBehavior: clip);
  static AlertDialog clip(Clip clip) => clipBehavior(clip);
  static const antiAlias = AlertDialog(clipBehavior: Clip.antiAlias);
  static const antiAliasWithSaveLayer =
      AlertDialog(clipBehavior: Clip.antiAliasWithSaveLayer);
  static const hardEdge = AlertDialog(clipBehavior: Clip.hardEdge);

  static AlertDialog shape(ShapeBorder shape) => AlertDialog(shape: shape);
  static AlertDialog scrollable([bool scrollable = true]) =>
      AlertDialog(scrollable: scrollable);

  static AlertDialog padding({
    EdgeInsets inset =
        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    EdgeInsets? title,
    EdgeInsets? button,
    EdgeInsets actions = EdgeInsets.zero,
    EdgeInsets content = const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
  }) =>
      AlertDialog(
        insetPadding: inset,
        titlePadding: title,
        buttonPadding: button,
        actionsPadding: actions,
        contentPadding: content,
      );
}
