import 'package:flutter/material.dart';

import '../utilities.dart';

List<TextButton> _createTextButtonDesire(
  Widget self,
  List desirable,
  ButtonStyle? style,
) =>
    [
      TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        style: style ?? const ButtonStyle(),
      ),
      _toTextButton(self)!,
      ...desirable.map(_toTextButton).whereType<TextButton>(),
    ].toList();

TextButton? _toTextButton(Object? e) {
  if (e is TextButton) return e;

  if (e is ElevatedButton) {
    return TextButton(
      child: const SizedBox.shrink(),
      onPressed: null,
      style: e.style,
      focusNode: e.focusNode,
      autofocus: e.autofocus,
      clipBehavior: e.clipBehavior,
    );
  }

  if (e is OutlinedButton) {
    return TextButton(
      child: const SizedBox.shrink(),
      onPressed: null,
      style: e.style,
      focusNode: e.focusNode,
      autofocus: e.autofocus,
      clipBehavior: e.clipBehavior,
    );
  }

  if (e is ButtonStyle) {
    return TextButton(
      child: const SizedBox.shrink(),
      style: e,
      onPressed: null,
    );
  }

  if (e is TextStyle) {
    return TextButton(
      child: const SizedBox.shrink(),
      style: ButtonStyle(
        foregroundColor:
            e.color != null ? MaterialStateProperty.all(e.color) : null,
        textStyle: MaterialStateProperty.all(e),
      ),
      onPressed: null,
    );
  }

  return null;
}

extension DesireTextButton on TextButton {
  TextButton desire(List desirable) {
    final desires = _createTextButtonDesire(this, desirable, style);

    return TextButton(
      key: key,
      child: child ?? const SizedBox.shrink(),
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: desires
          .map((e) => e.style)
          .whereType<ButtonStyle>()
          .reduce((acc, e) => acc.merge(e).copyWith(textStyle: e.textStyle)),
      focusNode: mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
      autofocus:
          mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
      clipBehavior: mapDesire<Clip, TextButton>(
          desires, (e) => e.clipBehavior, Clip.none)!,
    );
  }
}

extension DesireElevatedButton on ElevatedButton {
  ElevatedButton desire(List desirable) {
    final desires = _createTextButtonDesire(this, desirable, style);

    return ElevatedButton(
      key: key,
      child: child ?? const SizedBox.shrink(),
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: desires
          .map((e) => e.style)
          .whereType<ButtonStyle>()
          .reduce((acc, e) => acc.merge(e).copyWith(textStyle: e.textStyle)),
      focusNode: mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
      autofocus:
          mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
      clipBehavior: mapDesire<Clip, TextButton>(
          desires, (e) => e.clipBehavior, Clip.none)!,
    );
  }
}

extension DesireOutlineButton on OutlinedButton {
  OutlinedButton desire(List desirable) {
    final desires = _createTextButtonDesire(this, desirable, style);

    return OutlinedButton(
      key: key,
      child: child ?? const SizedBox.shrink(),
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: desires
          .map((e) => e.style)
          .whereType<ButtonStyle>()
          .reduce((acc, e) => acc.merge(e).copyWith(textStyle: e.textStyle)),
      focusNode: mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
      autofocus:
          mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
      clipBehavior: mapDesire<Clip, TextButton>(
          desires, (e) => e.clipBehavior, Clip.none)!,
    );
  }
}

extension Desire on IconButton {
  IconButton desire(List desirable) {
    final desires = [this, ...desirable.whereType<IconButton>()].toList();

    return IconButton(
      key: key,
      icon: icon,
      onPressed: onPressed,
      iconSize: mapDesire<double, IconButton>(desires, (e) => e.iconSize, 24)!,
      visualDensity:
          mapDesire<VisualDensity, IconButton>(desires, (e) => e.visualDensity),
      padding: mapDesire<EdgeInsetsGeometry, IconButton>(
          desires, (e) => e.padding, const EdgeInsets.all(8))!,
      alignment: mapDesire<AlignmentGeometry, IconButton>(
          desires, (e) => e.alignment, Alignment.center)!,
      splashRadius:
          mapDesire<double, IconButton>(desires, (e) => e.splashRadius),
      color: mapDesire<Color, IconButton>(desires, (e) => e.color),
      focusColor: mapDesire<Color, IconButton>(desires, (e) => e.focusColor),
      hoverColor: mapDesire<Color, IconButton>(desires, (e) => e.hoverColor),
      highlightColor:
          mapDesire<Color, IconButton>(desires, (e) => e.highlightColor),
      splashColor: mapDesire<Color, IconButton>(desires, (e) => e.splashColor),
      disabledColor:
          mapDesire<Color, IconButton>(desires, (e) => e.disabledColor),
      mouseCursor: mapDesire<MouseCursor, IconButton>(
          desires, (e) => e.mouseCursor, SystemMouseCursors.click)!,
      focusNode: mapDesire<FocusNode, IconButton>(desires, (e) => e.focusNode),
      autofocus:
          mapDesire<bool, IconButton>(desires, (e) => e.autofocus, false)!,
      tooltip: mapDesire<String, IconButton>(desires, (e) => e.tooltip),
      enableFeedback:
          mapDesire<bool, IconButton>(desires, (e) => e.enableFeedback, true)!,
      constraints:
          mapDesire<BoxConstraints, IconButton>(desires, (e) => e.constraints),
    );
  }
}
