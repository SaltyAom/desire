import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@immutable
// ignore: camel_case_types
class frt {
  static TextStyle h1(BuildContext context) =>
      Theme.of(context).textTheme.headline1 ?? const TextStyle();
  static TextStyle h2(BuildContext context) =>
      Theme.of(context).textTheme.headline2 ?? const TextStyle();
  static TextStyle h3(BuildContext context) =>
      Theme.of(context).textTheme.headline3 ?? const TextStyle();
  static TextStyle h4(BuildContext context) =>
      Theme.of(context).textTheme.headline4 ?? const TextStyle();
  static TextStyle h5(BuildContext context) =>
      Theme.of(context).textTheme.headline5 ?? const TextStyle();
  static TextStyle h6(BuildContext context) =>
      Theme.of(context).textTheme.headline6 ?? const TextStyle();

  static TextStyle body1(BuildContext context) =>
      Theme.of(context).textTheme.bodyText1 ?? const TextStyle();
  static TextStyle body2(BuildContext context) =>
      Theme.of(context).textTheme.bodyText2 ?? const TextStyle();

  static TextStyle color(Color color) => TextStyle(color: color);
  static TextStyle bg(Color color) => TextStyle(backgroundColor: color);
  static TextStyle background(Color color) => TextStyle(backgroundColor: color);
  static TextStyle fontSize(double fontSize) => TextStyle(fontSize: fontSize);

  static const bold = TextStyle(fontWeight: FontWeight.bold);
  static const italic = TextStyle(fontStyle: FontStyle.italic);
  static const underline = TextStyle(decoration: TextDecoration.underline);
  static const lineThrough = TextStyle(decoration: TextDecoration.lineThrough);

  static TextStyle fontWeight(FontWeight fontWeight) =>
      TextStyle(fontWeight: fontWeight);
  static const w100 = TextStyle(fontWeight: FontWeight.w100);
  static const w200 = TextStyle(fontWeight: FontWeight.w200);
  static const w300 = TextStyle(fontWeight: FontWeight.w300);
  static const w400 = TextStyle(fontWeight: FontWeight.w400);
  static const w500 = TextStyle(fontWeight: FontWeight.w500);
  static const w600 = TextStyle(fontWeight: FontWeight.w600);
  static const w700 = TextStyle(fontWeight: FontWeight.w700);
  static const w800 = TextStyle(fontWeight: FontWeight.w800);
  static const w900 = TextStyle(fontWeight: FontWeight.w900);

  static TextStyle letterSpacing(double spacing) =>
      TextStyle(letterSpacing: spacing);
  static TextStyle wordSpacing(double spacing) =>
      TextStyle(wordSpacing: spacing);

  static TextStyle h(double height) => TextStyle(height: height);
  static TextStyle height(double height) => TextStyle(height: height);

  static TextStyle fg(Paint foreground) => TextStyle(foreground: foreground);
  static TextStyle foreground(Paint foreground) =>
      TextStyle(foreground: foreground);

  static TextStyle decorationColor(Color color) =>
      TextStyle(decorationColor: color);
  static TextStyle decorationThickness(double thickness) =>
      TextStyle(decorationThickness: thickness);

  static TextStyle font(String fontFamily) => TextStyle(fontFamily: fontFamily);
  static TextStyle fontFamily(String fontFamily) =>
      TextStyle(fontFamily: fontFamily);
  static TextStyle fontFamilyFallback(List<String> fontFamilies) =>
      TextStyle(fontFamilyFallback: fontFamilies);

  static Text align(TextAlign textAlign) => Text("", textAlign: textAlign);
  static const left = Text("", textAlign: TextAlign.left);
  static const right = Text("", textAlign: TextAlign.right);
  static const start = Text("", textAlign: TextAlign.start);
  static const end = Text("", textAlign: TextAlign.end);
  static const justify = Text("", textAlign: TextAlign.justify);
  static const center = Text("", textAlign: TextAlign.center);

  static Text direction(TextDirection textDirection) =>
      Text("", textDirection: textDirection);
  static const ltr = Text("", textDirection: TextDirection.ltr);
  static const trl = Text("", textDirection: TextDirection.rtl);

  static Text locale(Locale locale) => Text("", locale: locale);
  static Text overflow(TextOverflow clip) => Text("", overflow: clip);
  static const clip = Text("", overflow: TextOverflow.clip);
  static const ellipsis = Text("", overflow: TextOverflow.ellipsis);
  static const fade = Text("", overflow: TextOverflow.fade);
  static const visible = Text("", overflow: TextOverflow.visible);

  static Text widthBasis(TextWidthBasis textWidthBasis) =>
      Text("", textWidthBasis: textWidthBasis);
  static const longestLine =
      Text("", textWidthBasis: TextWidthBasis.longestLine);
  static const parent = Text("", textWidthBasis: TextWidthBasis.parent);

  static Text heightBehavior(TextHeightBehavior textHeightBehavior) =>
      Text("", textHeightBehavior: textHeightBehavior);

  static Text maxLines(int maxLines) => Text("", maxLines: maxLines);
  static Text softwrap(bool softWrap) => Text("", softWrap: softWrap);
}
