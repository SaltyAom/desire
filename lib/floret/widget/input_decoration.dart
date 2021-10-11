import 'package:flutter/material.dart';

// ignore: camel_case_types
class frid {
  const frid()
      : assert(true, "You shouldn't construct frid (Floret Input Decoration)");

  static InputDecoration icon(Widget icon) => InputDecoration(icon: icon);
  static InputDecoration label(Widget label) => InputDecoration(label: label);

  static InputDecoration labelText(String labelText) =>
      InputDecoration(labelText: labelText);
  static InputDecoration labelStyle(TextStyle style) => InputDecoration(
        labelStyle: style,
      );

  static InputDecoration floatingLabelStyle(TextStyle style) => InputDecoration(
        floatingLabelStyle: style,
      );

  static InputDecoration helperText(String helperText) =>
      InputDecoration(helperText: helperText);
  static InputDecoration helperStyle(TextStyle style) => InputDecoration(
        helperStyle: style,
      );
  static InputDecoration helperMaxLines(int maxLines) => InputDecoration(
        helperMaxLines: maxLines,
      );

  static InputDecoration hintText(String hintText) =>
      InputDecoration(hintText: hintText);
  static InputDecoration hintStyle(TextStyle style) => InputDecoration(
        hintStyle: style,
      );
  static InputDecoration hintMaxLines(int maxLines) => InputDecoration(
        hintMaxLines: maxLines,
      );

  static InputDecoration errorText(String errorText) =>
      InputDecoration(errorText: errorText);
  static InputDecoration errorStyle(TextStyle style) => InputDecoration(
        errorStyle: style,
      );
  static InputDecoration errorMaxLines(int maxLines) => InputDecoration(
        errorMaxLines: maxLines,
      );

  static InputDecoration floatingLabelBehavior(
          FloatingLabelBehavior behavior) =>
      InputDecoration(
        floatingLabelBehavior: behavior,
      );
  static const alwaysFloat = FloatingLabelBehavior.always;
  static const autoFloat = FloatingLabelBehavior.auto;
  static const neverFloat = FloatingLabelBehavior.never;

  static InputDecoration collapse([bool collapse = true]) => InputDecoration(
        isCollapsed: collapse,
      );

  static InputDecoration dense([bool dense = true]) => InputDecoration(
        isDense: dense,
      );

  static InputDecoration contentPadding(EdgeInsets padding) => InputDecoration(
        contentPadding: padding,
      );
  static InputDecoration padding(EdgeInsets padding) => contentPadding(padding);
  static InputDecoration p(EdgeInsets padding) => contentPadding(padding);

  static InputDecoration px(double padding) => contentPadding(
        EdgeInsets.symmetric(
          horizontal: padding,
        ),
      );
  static InputDecoration py(double padding) => contentPadding(
        EdgeInsets.symmetric(
          vertical: padding,
        ),
      );
  static InputDecoration pxy(double x, double y) => contentPadding(
        EdgeInsets.symmetric(horizontal: x, vertical: y),
      );

  static InputDecoration pl(double padding) => contentPadding(
        EdgeInsets.only(
          left: padding,
        ),
      );
  static InputDecoration pr(double padding) => contentPadding(
        EdgeInsets.only(
          right: padding,
        ),
      );
  static InputDecoration pt(double padding) => contentPadding(
        EdgeInsets.only(
          top: padding,
        ),
      );
  static InputDecoration pb(double padding) => contentPadding(
        EdgeInsets.only(
          bottom: padding,
        ),
      );

  static InputDecoration prefixIcon(Widget icon) =>
      InputDecoration(prefixIcon: icon);
  static InputDecoration prefixIconConstraints(BoxConstraints constraints) =>
      InputDecoration(prefixIconConstraints: constraints);
  static InputDecoration prefix(Widget widget) =>
      InputDecoration(prefix: widget);
  static InputDecoration prefixText(String text) =>
      InputDecoration(prefixText: text);
  static InputDecoration prefixStyle(TextStyle style) =>
      InputDecoration(prefixStyle: style);

  static InputDecoration suffixIcon(Widget icon) =>
      InputDecoration(suffixIcon: icon);
  static InputDecoration suffixIconConstraints(BoxConstraints constraints) =>
      InputDecoration(suffixIconConstraints: constraints);
  static InputDecoration suffix(Widget widget) =>
      InputDecoration(suffix: widget);
  static InputDecoration suffixText(String text) =>
      InputDecoration(suffixText: text);
  static InputDecoration suffixStyle(TextStyle style) =>
      InputDecoration(suffixStyle: style);

  static InputDecoration counter(Widget widget) =>
      InputDecoration(counter: widget);
  static InputDecoration counterText(String text) =>
      InputDecoration(counterText: text);
  static InputDecoration counterStyle(TextStyle style) =>
      InputDecoration(counterStyle: style);

  static InputDecoration filled([bool isFilled = true]) =>
      InputDecoration(filled: isFilled);
  static InputDecoration fillColor(Color color) => InputDecoration(
        fillColor: color,
      );

  static InputDecoration bg(Color color) => InputDecoration(
        filled: true,
        fillColor: color,
      );

  static InputDecoration focusColor(Color color) => InputDecoration(
        focusColor: color,
      );
  static InputDecoration focus(Color color) => focusColor(color);

  static InputDecoration hoverColor(Color color) => InputDecoration(
        hoverColor: color,
      );
  static InputDecoration hover(Color color) => hoverColor(color);

  static InputDecoration errorBorder(InputBorder border) =>
      InputDecoration(errorBorder: border);
  static InputDecoration focusedBorder(InputBorder border) =>
      InputDecoration(focusedBorder: border);
  static InputDecoration focusedErrorBorder(InputBorder border) =>
      InputDecoration(focusedErrorBorder: border);
  static InputDecoration disabledBorder(InputBorder border) =>
      InputDecoration(disabledBorder: border);
  static InputDecoration enabledBorder(InputBorder border) =>
      InputDecoration(enabledBorder: border);
  static InputDecoration border(InputBorder border) =>
      InputDecoration(border: border);

  static InputDecoration enabled([bool enable = true]) =>
      InputDecoration(enabled: enable);

  static InputDecoration semanticCounterText(String text) =>
      InputDecoration(semanticCounterText: text);
  static InputDecoration constraints(BoxConstraints constraints) =>
      InputDecoration(constraints: constraints);
}
