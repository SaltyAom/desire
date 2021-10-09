import 'package:flutter/material.dart';

import '../utilities.dart';

extension DesireAlertDialog on AlertDialog {
  AlertDialog desire(List desirable) {
    final desires = [
      this,
      ...desirable.whereType<AlertDialog>(),
    ].toList();

    return AlertDialog(
      title: title,
      titlePadding: mapDesire<EdgeInsetsGeometry, AlertDialog>(
        desires,
        (e) => e.titlePadding,
      ),
      titleTextStyle:
          mapDesire<TextStyle, AlertDialog>(desires, (e) => e.titleTextStyle),
      content: content,
      contentPadding: mapDesire<EdgeInsetsGeometry, AlertDialog>(
        desires,
        (e) => e.contentPadding,
        const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
      )!,
      contentTextStyle:
          mapDesire<TextStyle, AlertDialog>(desires, (e) => e.contentTextStyle),
      actions: actions,
      actionsPadding: mapDesire<EdgeInsetsGeometry, AlertDialog>(
        desires,
        (e) => e.contentPadding,
        EdgeInsets.zero,
      )!,
      actionsAlignment: mapDesire<MainAxisAlignment, AlertDialog>(
          desires, (e) => e.actionsAlignment),
      actionsOverflowDirection: mapDesire<VerticalDirection, AlertDialog>(
          desires, (e) => e.actionsOverflowDirection),
      buttonPadding: mapDesire<EdgeInsetsGeometry, AlertDialog>(
          desires, (e) => e.buttonPadding),
      backgroundColor:
          mapDesire<Color, AlertDialog>(desires, (e) => e.backgroundColor),
      elevation: mapDesire<double, AlertDialog>(desires, (e) => e.elevation),
      semanticLabel: semanticLabel,
      insetPadding: mapDesire<EdgeInsets, AlertDialog>(
          desires,
          (e) => e.insetPadding,
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0))!,
      clipBehavior: mapDesire<Clip, AlertDialog>(
          desires, (e) => e.clipBehavior, Clip.none)!,
      scrollable:
          mapDesire<bool, AlertDialog>(desires, (e) => e.scrollable, false)!,
      shape: mapDesire<ShapeBorder, AlertDialog>(desires, (e) => e.shape),
    );
  }
}
