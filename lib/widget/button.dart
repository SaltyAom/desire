import 'package:flutter/material.dart';

import '../core.dart';

List<TextButton> _createTextButtonDesire(
  List desirable,
  ButtonStyle? style,
) =>
    [
      TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        style: style ?? const ButtonStyle(),
      ),
      ..._toTextButton(desirable)
    ].toList();

Iterable<TextButton> _toTextButton(List desirable) => desirable.map((e) {
      if (e is TextButton) return e;

      if (e is ElevatedButton || e is OutlinedButton) {
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
        print(e);
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
    }).whereType<TextButton>();

extension DesireTextButton on TextButton {
  TextButton desire(List desirable) {
    final desires = _createTextButtonDesire(desirable, style);

    return TextButton(
      key: key,
      child: child ?? const SizedBox.shrink(),
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: desires
          .map((e) => e.style)
          .whereType<ButtonStyle>()
          .reduce((acc, e) => acc.merge(e)),
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
    final desires = _createTextButtonDesire(desirable, style);

    return ElevatedButton(
      key: key,
      child: child ?? const SizedBox.shrink(),
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: desires
          .map((e) => e.style)
          .whereType<ButtonStyle>()
          .reduce((acc, e) => acc.merge(e)),
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
    final desires = _createTextButtonDesire(desirable, style);

    return OutlinedButton(
      key: key,
      child: child ?? const SizedBox.shrink(),
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: desires
          .map((e) => e.style)
          .whereType<ButtonStyle>()
          .reduce((acc, e) => acc.merge(e)),
      focusNode: mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
      autofocus:
          mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
      clipBehavior: mapDesire<Clip, TextButton>(
          desires, (e) => e.clipBehavior, Clip.none)!,
    );
  }
}
