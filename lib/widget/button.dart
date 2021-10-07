import 'package:flutter/material.dart';

import '../core.dart';

List<TextButton> toTextButton(List<Object?> widgets) => widgets
        .where((e) =>
            e is TextButton || e is ElevatedButton || e is OutlinedButton)
        .map((el) {
      if (el is TextButton) return el;

      if (el is ElevatedButton) {
        return TextButton(
          child: const SizedBox.shrink(),
          onPressed: null,
          style: el.style,
          focusNode: el.focusNode,
          autofocus: el.autofocus,
          clipBehavior: el.clipBehavior,
        );
      }

      final e = el as OutlinedButton;

      return TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        style: e.style,
        focusNode: e.focusNode,
        autofocus: e.autofocus,
        clipBehavior: e.clipBehavior,
      );
    }).toList();

extension DesireTextButton on TextButton {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = toTextButton([
        style != null
            ? this
            : const TextButton(
                child: SizedBox.shrink(),
                onPressed: null,
                style: ButtonStyle(),
              ),
        ...desirable.where((e) =>
            e is TextButton || e is ElevatedButton || e is OutlinedButton),
        ...desirable.whereType<ButtonStyle>().map((style) => TextButton(
            child: const SizedBox.shrink(), style: style, onPressed: null))
      ].toList());

      return styles;
    }

    return Builder(
      builder: (context) {
        final desires = getDesire(context);

        return TextButton(
          child: child ?? const SizedBox.shrink(),
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: desires
              .map((e) => e.style)
              .whereType<ButtonStyle>()
              .reduce((acc, e) => acc.merge(e)),
          focusNode:
              mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
          autofocus:
              mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
          clipBehavior: mapDesire<Clip, TextButton>(
              desires, (e) => e.clipBehavior, Clip.none)!,
        );
      },
    );
  }
}

extension DesireElevatedButton on ElevatedButton {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = toTextButton([
        style != null
            ? this
            : const TextButton(
                child: SizedBox.shrink(),
                onPressed: null,
                style: ButtonStyle(),
              ),
        ...desirable.where((e) =>
            e is TextButton || e is ElevatedButton || e is OutlinedButton),
        ...desirable.whereType<ButtonStyle>().map((style) => TextButton(
            child: const SizedBox.shrink(), style: style, onPressed: null))
      ].toList());

      return styles;
    }

    return Builder(
      builder: (context) {
        final desires = getDesire(context);

        return ElevatedButton(
          child: child ?? const SizedBox.shrink(),
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: desires
              .map((e) => e.style)
              .whereType<ButtonStyle>()
              .reduce((acc, e) => acc.merge(e)),
          focusNode:
              mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
          autofocus:
              mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
          clipBehavior: mapDesire<Clip, TextButton>(
              desires, (e) => e.clipBehavior, Clip.none)!,
        );
      },
    );
  }
}

extension DesireOutlineButton on OutlinedButton {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = toTextButton([
        style != null
            ? this
            : const TextButton(
                child: SizedBox.shrink(),
                onPressed: null,
                style: ButtonStyle(),
              ),
        ...desirable.where((e) =>
            e is TextButton || e is ElevatedButton || e is OutlinedButton),
        ...desirable.whereType<ButtonStyle>().map((style) => TextButton(
            child: const SizedBox.shrink(), style: style, onPressed: null))
      ].toList());

      return styles;
    }

    return Builder(
      builder: (context) {
        final desires = getDesire(context);

        return OutlinedButton(
          child: child ?? const SizedBox.shrink(),
          onPressed: onPressed,
          onLongPress: onLongPress,
          style: desires
              .map((e) => e.style)
              .whereType<ButtonStyle>()
              .reduce((acc, e) => acc.merge(e)),
          focusNode:
              mapDesire<FocusNode, TextButton>(desires, (e) => e.focusNode),
          autofocus:
              mapDesire<bool, TextButton>(desires, (e) => e.autofocus, false)!,
          clipBehavior: mapDesire<Clip, TextButton>(
              desires, (e) => e.clipBehavior, Clip.none)!,
        );
      },
    );
  }
}
