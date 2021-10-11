// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

@immutable
// ignore: camel_case_types
class frb {
  const frb() : assert(true, "You shouldn't construct frb (Floret Button)");

  static TextButton focusNode(FocusNode focusNode) => TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        focusNode: focusNode,
      );

  static TextButton autofocus([bool autofocus = true]) => TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        autofocus: autofocus,
      );

  static TextButton clipBehavior(Clip clip) => TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        clipBehavior: clip,
      );
  static TextButton clip(Clip clip) => TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        clipBehavior: clip,
      );
  static const antiAlias = TextButton(
    child: SizedBox.shrink(),
    onPressed: null,
    clipBehavior: Clip.antiAlias,
  );
  static const antiAliasWithSaveLayer = TextButton(
    child: SizedBox.shrink(),
    onPressed: null,
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );
  static const hardEdge = TextButton(
    child: SizedBox.shrink(),
    onPressed: null,
    clipBehavior: Clip.hardEdge,
  );
  static const clipNone = TextButton(
    child: SizedBox.shrink(),
    onPressed: null,
    clipBehavior: Clip.none,
  );

  static TextButton style(ButtonStyle buttonStyle) => TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        style: buttonStyle,
      );

  static ButtonStyle bg({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle backgroundColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      bg(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle fg({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle foregroundColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      fg(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle overlay({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle overlayColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      overlay(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle shadow({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle shadowColor({
    Color? all,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
    Color? base,
  }) =>
      shadow(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle elevation({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        elevation: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );

  static ButtonStyle p({
    EdgeInsets? all,
    EdgeInsets? disabled,
    EdgeInsets? dragged,
    EdgeInsets? error,
    EdgeInsets? focused,
    EdgeInsets? hovered,
    EdgeInsets? pressed,
    EdgeInsets? scrolledUnder,
    EdgeInsets? selected,
    EdgeInsets? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle padding({
    EdgeInsets? all,
    EdgeInsets? disabled,
    EdgeInsets? dragged,
    EdgeInsets? error,
    EdgeInsets? focused,
    EdgeInsets? hovered,
    EdgeInsets? pressed,
    EdgeInsets? scrolledUnder,
    EdgeInsets? selected,
    EdgeInsets? base,
  }) =>
      p(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle px({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return EdgeInsets.symmetric(horizontal: all);

          if (states.contains(MaterialState.disabled))
            return disabled != null
                ? EdgeInsets.symmetric(horizontal: disabled)
                : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null
                ? EdgeInsets.symmetric(horizontal: dragged)
                : null;
          if (states.contains(MaterialState.error))
            return error != null
                ? EdgeInsets.symmetric(horizontal: error)
                : null;
          if (states.contains(MaterialState.focused))
            return focused != null
                ? EdgeInsets.symmetric(horizontal: focused)
                : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null
                ? EdgeInsets.symmetric(horizontal: hovered)
                : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null
                ? EdgeInsets.symmetric(horizontal: pressed)
                : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? EdgeInsets.symmetric(horizontal: scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null
                ? EdgeInsets.symmetric(horizontal: selected)
                : null;

          return base != null ? EdgeInsets.symmetric(horizontal: base) : null;
        }),
      );

  static ButtonStyle py({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return EdgeInsets.symmetric(vertical: all);

          if (states.contains(MaterialState.disabled))
            return disabled != null
                ? EdgeInsets.symmetric(vertical: disabled)
                : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null
                ? EdgeInsets.symmetric(vertical: dragged)
                : null;
          if (states.contains(MaterialState.error))
            return error != null ? EdgeInsets.symmetric(vertical: error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null
                ? EdgeInsets.symmetric(vertical: focused)
                : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null
                ? EdgeInsets.symmetric(vertical: hovered)
                : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null
                ? EdgeInsets.symmetric(vertical: pressed)
                : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? EdgeInsets.symmetric(vertical: scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null
                ? EdgeInsets.symmetric(vertical: selected)
                : null;

          return base != null ? EdgeInsets.symmetric(vertical: base) : null;
        }),
      );

  static ButtonStyle pl({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return EdgeInsets.only(left: all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? EdgeInsets.only(left: disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? EdgeInsets.only(left: dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? EdgeInsets.only(left: error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? EdgeInsets.only(left: focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? EdgeInsets.only(left: hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? EdgeInsets.only(left: pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? EdgeInsets.only(left: scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? EdgeInsets.only(left: selected) : null;

          return base != null ? EdgeInsets.only(left: base) : null;
        }),
      );

  static ButtonStyle pr({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return EdgeInsets.only(right: all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? EdgeInsets.only(right: disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? EdgeInsets.only(right: dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? EdgeInsets.only(right: error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? EdgeInsets.only(right: focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? EdgeInsets.only(right: hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? EdgeInsets.only(right: pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? EdgeInsets.only(right: scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? EdgeInsets.only(right: selected) : null;

          return base != null ? EdgeInsets.only(right: base) : null;
        }),
      );

  static ButtonStyle pt({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return EdgeInsets.only(top: all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? EdgeInsets.only(top: disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? EdgeInsets.only(top: dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? EdgeInsets.only(top: error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? EdgeInsets.only(top: focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? EdgeInsets.only(top: hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? EdgeInsets.only(top: pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? EdgeInsets.only(top: scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? EdgeInsets.only(top: selected) : null;

          return base != null ? EdgeInsets.only(right: base) : null;
        }),
      );

  static ButtonStyle pb({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) {
          if (all != null) return EdgeInsets.only(bottom: all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? EdgeInsets.only(bottom: disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? EdgeInsets.only(bottom: dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? EdgeInsets.only(bottom: error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? EdgeInsets.only(bottom: focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? EdgeInsets.only(bottom: hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? EdgeInsets.only(bottom: pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? EdgeInsets.only(bottom: scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? EdgeInsets.only(bottom: selected) : null;

          return base != null ? EdgeInsets.only(right: base) : null;
        }),
      );

  static ButtonStyle minimumSize({
    Size? all,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
    Size? base,
  }) =>
      ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle minSize({
    Size? all,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
    Size? base,
  }) =>
      minimumSize(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle minWidth({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return Size(all, 0);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? Size(disabled, 0) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? Size(dragged, 0) : null;
          if (states.contains(MaterialState.error))
            return error != null ? Size(error, 0) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? Size(focused, 0) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? Size(hovered, 0) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? Size(pressed, 0) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null ? Size(scrolledUnder, 0) : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? Size(selected, 0) : null;

          return base != null ? Size(base, 0) : null;
        }),
      );
  static ButtonStyle minW({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      minWidth(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );
  static ButtonStyle minimumWidth({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      minWidth(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle minHeight({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return Size(0, all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? Size(0, disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? Size(0, dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? Size(0, error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? Size(0, focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? Size(0, hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? Size(0, pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null ? Size(0, scrolledUnder) : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? Size(0, selected) : null;

          return base != null ? Size(0, base) : null;
        }),
      );
  static ButtonStyle minH({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      minHeight(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );
  static ButtonStyle minimumHeight({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      minHeight(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle maximumSize({
    Size? all,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
    Size? base,
  }) =>
      ButtonStyle(
        maximumSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );
  static ButtonStyle maxSize({
    Size? all,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
    Size? base,
  }) =>
      maximumSize(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle maxWidth({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        maximumSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return Size.fromWidth(all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? Size.fromWidth(disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? Size.fromWidth(dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? Size.fromWidth(error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? Size.fromWidth(focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? Size.fromWidth(hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? Size.fromWidth(pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null ? Size.fromWidth(scrolledUnder) : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? Size.fromWidth(selected) : null;

          return base != null ? Size.fromWidth(base) : null;
        }),
      );
  static ButtonStyle maxW({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      maxWidth(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );
  static ButtonStyle maximumWidth({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      maxWidth(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle maxHeight({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        maximumSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return Size.fromHeight(all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? Size.fromHeight(disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? Size.fromHeight(dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? Size.fromHeight(error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? Size.fromHeight(focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? Size.fromHeight(hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? Size.fromHeight(pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? Size.fromHeight(scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? Size.fromHeight(selected) : null;

          return base != null ? Size.fromHeight(base) : null;
        }),
      );
  static ButtonStyle maxH({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      maxHeight(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );
  static ButtonStyle maximumHeight({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      maxHeight(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle size({
    Size? all,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
    Size? base,
  }) =>
      ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );

  static ButtonStyle width({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return Size.fromWidth(all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? Size.fromWidth(disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? Size.fromWidth(dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? Size.fromWidth(error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? Size.fromWidth(focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? Size.fromWidth(hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? Size.fromWidth(pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null ? Size.fromWidth(scrolledUnder) : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? Size.fromWidth(selected) : null;

          return base != null ? Size.fromWidth(base) : null;
        }),
      );
  static ButtonStyle w({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      width(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle height({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith((states) {
          if (all != null) return Size.fromHeight(all);

          if (states.contains(MaterialState.disabled))
            return disabled != null ? Size.fromHeight(disabled) : null;
          if (states.contains(MaterialState.dragged))
            return dragged != null ? Size.fromHeight(dragged) : null;
          if (states.contains(MaterialState.error))
            return error != null ? Size.fromHeight(error) : null;
          if (states.contains(MaterialState.focused))
            return focused != null ? Size.fromHeight(focused) : null;
          if (states.contains(MaterialState.hovered))
            return hovered != null ? Size.fromHeight(hovered) : null;
          if (states.contains(MaterialState.pressed))
            return pressed != null ? Size.fromHeight(pressed) : null;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder != null
                ? Size.fromHeight(scrolledUnder)
                : null;
          if (states.contains(MaterialState.selected))
            return selected != null ? Size.fromHeight(selected) : null;

          return base != null ? Size.fromHeight(base) : null;
        }),
      );
  static ButtonStyle h({
    double? all,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
    double? base,
  }) =>
      height(
        all: all,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  static ButtonStyle side({
    BorderSide? all,
    BorderSide? disabled,
    BorderSide? dragged,
    BorderSide? error,
    BorderSide? focused,
    BorderSide? hovered,
    BorderSide? pressed,
    BorderSide? scrolledUnder,
    BorderSide? selected,
    BorderSide? base,
  }) =>
      ButtonStyle(
        side: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );

  static ButtonStyle shape({
    OutlinedBorder? all,
    OutlinedBorder? disabled,
    OutlinedBorder? dragged,
    OutlinedBorder? error,
    OutlinedBorder? focused,
    OutlinedBorder? hovered,
    OutlinedBorder? pressed,
    OutlinedBorder? scrolledUnder,
    OutlinedBorder? selected,
    OutlinedBorder? base,
  }) =>
      ButtonStyle(
        shape: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );

  static ButtonStyle mouseCursor({
    MouseCursor? all,
    MouseCursor? disabled,
    MouseCursor? dragged,
    MouseCursor? error,
    MouseCursor? focused,
    MouseCursor? hovered,
    MouseCursor? pressed,
    MouseCursor? scrolledUnder,
    MouseCursor? selected,
    MouseCursor? base,
  }) =>
      ButtonStyle(
        mouseCursor: MaterialStateProperty.resolveWith((states) {
          if (all != null) return all;

          if (states.contains(MaterialState.disabled)) return disabled;
          if (states.contains(MaterialState.dragged)) return dragged;
          if (states.contains(MaterialState.error)) return error;
          if (states.contains(MaterialState.focused)) return focused;
          if (states.contains(MaterialState.hovered)) return hovered;
          if (states.contains(MaterialState.pressed)) return pressed;
          if (states.contains(MaterialState.scrolledUnder))
            return scrolledUnder;
          if (states.contains(MaterialState.selected)) return selected;

          return base;
        }),
      );

  static ButtonStyle visualDensity(VisualDensity visualDensity) => ButtonStyle(
        visualDensity: visualDensity,
      );

  static ButtonStyle animationDuration(Duration duration) => ButtonStyle(
        animationDuration: duration,
      );
  static ButtonStyle duration(Duration duration) => ButtonStyle(
        animationDuration: duration,
      );

  static ButtonStyle enableFeedback([bool enable = true]) => ButtonStyle(
        enableFeedback: enable,
      );

  static ButtonStyle splashFactory(
    InteractiveInkFeatureFactory splashFactory,
  ) =>
      ButtonStyle(
        splashFactory: splashFactory,
      );

  static ButtonStyle align(
    Alignment alignment,
  ) =>
      ButtonStyle(
        alignment: alignment,
      );
  static ButtonStyle alignment(
    Alignment alignment,
  ) =>
      align(alignment);

  static const topLeft = ButtonStyle(
    alignment: Alignment.topLeft,
  );
  static const topCenter = ButtonStyle(
    alignment: Alignment.topCenter,
  );
  static const topRight = ButtonStyle(
    alignment: Alignment.topRight,
  );
  static const centerLeft = ButtonStyle(
    alignment: Alignment.centerLeft,
  );
  static const center = ButtonStyle(
    alignment: Alignment.center,
  );
  static const centerRight = ButtonStyle(
    alignment: Alignment.centerRight,
  );
  static const bottomLeft = ButtonStyle(
    alignment: Alignment.bottomLeft,
  );
  static const bottomCenter = ButtonStyle(
    alignment: Alignment.bottomCenter,
  );
  static const bottomRight = ButtonStyle(
    alignment: Alignment.bottomRight,
  );
}
