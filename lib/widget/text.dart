import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utilities.dart';

SelectableText _textToSelectableText(Text e) => SelectableText(
      "",
      style: e.style,
      textAlign: e.textAlign,
      textDirection: e.textDirection,
      textScaleFactor: e.textScaleFactor,
      maxLines: e.maxLines,
      textWidthBasis: e.textWidthBasis,
      textHeightBehavior: e.textHeightBehavior,
      strutStyle: e.strutStyle,
    );

RichText _textToRichText(Text e) => RichText(
      text: const TextSpan(),
      textAlign: e.textAlign ?? TextAlign.start,
      textDirection: e.textDirection,
      softWrap: e.softWrap ?? true,
      overflow: e.overflow ?? TextOverflow.clip,
      textScaleFactor: e.textScaleFactor ?? 1,
      maxLines: e.maxLines,
      locale: e.locale,
      strutStyle: e.strutStyle,
      textWidthBasis: e.textWidthBasis ?? TextWidthBasis.parent,
      textHeightBehavior: e.textHeightBehavior,
    );

TextSpan _textToTextSpan(Text e) => TextSpan(
      style: e.style,
      semanticsLabel: e.semanticsLabel,
      locale: e.locale,
    );

extension DesireText on Text {
  Text desire(List desirable) {
    final desires = [
      style != null ? this : const Text("", style: TextStyle()),
      ...desirable.map((e) {
        if (e is Text) return e;
        if (e is TextStyle) return Text("", style: e);
        return null;
      }).whereType<Text>(),
    ].toList();

    return Text(
      data ?? "",
      key: key,
      textAlign: mapDesire<TextAlign, Text>(desires, (e) => e.textAlign),
      textDirection:
          mapDesire<TextDirection, Text>(desires, (e) => e.textDirection),
      locale: mapDesire<Locale, Text>(desires, (e) => e.locale),
      softWrap: mapDesire<bool, Text>(desires, (e) => e.softWrap),
      overflow: mapDesire<TextOverflow, Text>(desires, (e) => e.overflow),
      textScaleFactor:
          mapDesire<double, Text>(desires, (e) => e.textScaleFactor),
      maxLines: mapDesire<int, Text>(desires, (e) => e.maxLines),
      semanticsLabel: mapDesire<String, Text>(desires, (e) => e.semanticsLabel),
      textWidthBasis:
          mapDesire<TextWidthBasis, Text>(desires, (e) => e.textWidthBasis),
      textHeightBehavior: mapDesire<TextHeightBehavior, Text>(
          desires, (e) => e.textHeightBehavior),
      style: desires
          .map((e) => e.style)
          .whereType<TextStyle>()
          .reduce((acc, e) => acc.merge(e)),
    );
  }
}

extension DesireTextSpan on TextSpan {
  TextSpan desire(List desirable) {
    final desires = [
      style != null ? this : const TextSpan(style: TextStyle()),
      ...desirable.map((e) {
        if (e is TextSpan) return e;
        if (e is Text) return _textToTextSpan(e);
        if (e is TextStyle) return TextSpan(style: e);
        return null;
      }).whereType<TextSpan>(),
    ].toList();

    return TextSpan(
      text: text,
      children: children,
      style: desires
          .map((e) => e.style)
          .whereType<TextStyle>()
          .reduce((acc, e) => acc.merge(e)),
      recognizer: recognizer,
      mouseCursor:
          mapDesire<MouseCursor, TextSpan>(desires, (e) => e.mouseCursor),
      onEnter: onEnter,
      onExit: onExit,
      semanticsLabel:
          mapDesire<String, TextSpan>(desires, (e) => e.semanticsLabel),
      locale: mapDesire<Locale, TextSpan>(desires, (e) => e.locale),
      spellOut: spellOut,
    );
  }
}

extension DesireRichText on RichText {
  RichText desire(List desirable) {
    final desires = [
      ...desirable.map((e) {
        if (e is RichText) return e;
        if (e is Text) return _textToRichText(e);
        return null;
      }).whereType<RichText>(),
    ].toList();

    return RichText(
      key: key,
      text: text,
      textAlign: mapDesire<TextAlign, RichText>(
          desires, (e) => e.textAlign, TextAlign.start)!,
      textDirection:
          mapDesire<TextDirection, RichText>(desires, (e) => e.textDirection),
      softWrap: mapDesire<bool, RichText>(desires, (e) => e.softWrap, true)!,
      overflow: mapDesire<TextOverflow, RichText>(
          desires, (e) => e.overflow, TextOverflow.clip)!,
      textScaleFactor:
          mapDesire<double, RichText>(desires, (e) => e.textScaleFactor, 1.0)!,
      maxLines: mapDesire<int, RichText>(desires, (e) => e.maxLines),
      locale: mapDesire<Locale, RichText>(desires, (e) => e.locale),
      textWidthBasis: mapDesire<TextWidthBasis, RichText>(
          desires, (e) => e.textWidthBasis, TextWidthBasis.parent)!,
      textHeightBehavior: mapDesire<TextHeightBehavior, RichText>(
          desires, (e) => e.textHeightBehavior),
    );
  }
}

extension DesireSelectableText on SelectableText {
  SelectableText desire(List desirable) {
    final desires = [
      style != null ? this : const SelectableText("", style: TextStyle()),
      ...desirable.map((e) {
        if (e is SelectableText) return e;
        if (e is Text) return _textToSelectableText(e);
        if (e is TextStyle) return Text("", style: e);
        return null;
      }).whereType<SelectableText>(),
    ].toList();

    return SelectableText(
      data ?? "",
      key: key,
      textAlign:
          mapDesire<TextAlign, SelectableText>(desires, (e) => e.textAlign),
      textDirection: mapDesire<TextDirection, SelectableText>(
          desires, (e) => e.textDirection),
      textScaleFactor:
          mapDesire<double, SelectableText>(desires, (e) => e.textScaleFactor),
      showCursor:
          mapDesire<bool, SelectableText>(desires, (e) => e.showCursor, false)!,
      autofocus:
          mapDesire<bool, SelectableText>(desires, (e) => e.autofocus, false)!,
      toolbarOptions: mapDesire<ToolbarOptions, SelectableText>(
          desires, (e) => e.toolbarOptions),
      minLines: mapDesire<int, SelectableText>(desires, (e) => e.minLines),
      maxLines: mapDesire<int, SelectableText>(desires, (e) => e.maxLines),
      cursorWidth:
          mapDesire<double, SelectableText>(desires, (e) => e.cursorWidth, 2)!,
      cursorHeight:
          mapDesire<double, SelectableText>(desires, (e) => e.cursorHeight),
      cursorRadius:
          mapDesire<Radius, SelectableText>(desires, (e) => e.cursorRadius),
      cursorColor:
          mapDesire<Color, SelectableText>(desires, (e) => e.cursorColor),
      selectionHeightStyle: mapDesire<BoxHeightStyle, SelectableText>(
          desires, (e) => e.selectionHeightStyle, BoxHeightStyle.tight)!,
      selectionWidthStyle: mapDesire<BoxWidthStyle, SelectableText>(
          desires, (e) => e.selectionWidthStyle, BoxWidthStyle.tight)!,
      dragStartBehavior: mapDesire<DragStartBehavior, SelectableText>(
          desires, (e) => e.dragStartBehavior, DragStartBehavior.start)!,
      enableInteractiveSelection: mapDesire<bool, SelectableText>(
          desires, (e) => e.enableInteractiveSelection, true)!,
      selectionControls: mapDesire<TextSelectionControls, SelectableText>(
          desires, (e) => e.selectionControls),
      onTap:
          mapDesire<void Function(), SelectableText>(desires, (e) => e.onTap),
      scrollPhysics: mapDesire<ScrollPhysics, SelectableText>(
          desires, (e) => e.scrollPhysics),
      textWidthBasis: mapDesire<TextWidthBasis, SelectableText>(
          desires, (e) => e.textWidthBasis),
      textHeightBehavior: mapDesire<TextHeightBehavior, SelectableText>(
          desires, (e) => e.textHeightBehavior),
      onSelectionChanged: mapDesire<
          void Function(TextSelection, SelectionChangedCause?),
          SelectableText>(desires, (e) => e.onSelectionChanged),
      style: desires
          .map((e) => e.style)
          .whereType<TextStyle>()
          .reduce((acc, e) => acc.merge(e)),
    );
  }
}
