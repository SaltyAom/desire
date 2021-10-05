library desire;

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DesireProvider extends InheritedWidget {
  final Map<String, Object> desires;

  // ignore: use_key_in_widget_constructors
  const DesireProvider({
    required child,
    required this.desires,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Map<String, Object> of(BuildContext context) {
    final DesireProvider? provider =
        context.dependOnInheritedWidgetOfExactType<DesireProvider>();
    assert(provider != null, 'DesireProvider not found');

    return provider!.desires;
  }
}

T? mapDesire<T, W extends Widget>(
  List<W> desires,
  T? Function(W e) propertyCallback,
) =>
    desires
        .map(propertyCallback)
        .lastWhere((v) => v is int, orElse: () => null);

extension DesireText on Text {
  desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = [
        style != null ? this : const Text("", style: TextStyle()),
        ...desirable.whereType<Text>(),
        ...desirable
            .whereType<TextStyle>()
            .map((style) => Text("", style: style))
      ].toList();

      return styles;
    }

    return Builder(builder: (context) {
      final desires = getDesire(context);

      return Text(
        data ?? "",
        textAlign: mapDesire<TextAlign, Text>(desires, (e) => e.textAlign),
        textDirection:
            mapDesire<TextDirection, Text>(desires, (e) => e.textDirection),
        locale: mapDesire<Locale, Text>(desires, (e) => e.locale),
        softWrap: mapDesire<bool, Text>(desires, (e) => e.softWrap),
        overflow: mapDesire<TextOverflow, Text>(desires, (e) => e.overflow),
        textScaleFactor:
            mapDesire<double, Text>(desires, (e) => e.textScaleFactor),
        maxLines: mapDesire<int, Text>(desires, (e) => e.maxLines),
        semanticsLabel:
            mapDesire<String, Text>(desires, (e) => e.semanticsLabel),
        textWidthBasis:
            mapDesire<TextWidthBasis, Text>(desires, (e) => e.textWidthBasis),
        textHeightBehavior: mapDesire<TextHeightBehavior, Text>(
            desires, (e) => e.textHeightBehavior),
        style: desires
            .map((e) => e.style)
            .whereType<TextStyle>()
            .reduce((acc, e) => acc.merge(e)),
      );
    });
  }
}

extension DesireSelectableText on SelectableText {
  desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = [
        style != null ? this : const SelectableText("", style: TextStyle()),
        ...desirable.whereType<SelectableText>(),
        ...desirable
            .whereType<TextStyle>()
            .map((style) => SelectableText("", style: style))
      ].toList();

      return styles;
    }

    return Builder(builder: (context) {
      final desires = getDesire(context);

      return SelectableText(
        data ?? "",
        textAlign:
            mapDesire<TextAlign, SelectableText>(desires, (e) => e.textAlign),
        textDirection: mapDesire<TextDirection, SelectableText>(
            desires, (e) => e.textDirection),
        textScaleFactor: mapDesire<double, SelectableText>(
            desires, (e) => e.textScaleFactor),
        showCursor:
            mapDesire<bool, SelectableText>(desires, (e) => e.showCursor) ??
                false,
        autofocus:
            mapDesire<bool, SelectableText>(desires, (e) => e.autofocus) ??
                false,
        toolbarOptions: mapDesire<ToolbarOptions, SelectableText>(
            desires, (e) => e.toolbarOptions),
        minLines: mapDesire<int, SelectableText>(desires, (e) => e.minLines),
        maxLines: mapDesire<int, SelectableText>(desires, (e) => e.maxLines),
        cursorWidth:
            mapDesire<double, SelectableText>(desires, (e) => e.cursorWidth) ??
                2,
        cursorHeight:
            mapDesire<double, SelectableText>(desires, (e) => e.cursorHeight),
        cursorRadius:
            mapDesire<Radius, SelectableText>(desires, (e) => e.cursorRadius),
        cursorColor:
            mapDesire<Color, SelectableText>(desires, (e) => e.cursorColor),
        selectionHeightStyle: mapDesire<BoxHeightStyle, SelectableText>(
                desires, (e) => e.selectionHeightStyle) ??
            BoxHeightStyle.tight,
        selectionWidthStyle: mapDesire<BoxWidthStyle, SelectableText>(
                desires, (e) => e.selectionWidthStyle) ??
            BoxWidthStyle.tight,
        dragStartBehavior: mapDesire<DragStartBehavior, SelectableText>(
                desires, (e) => e.dragStartBehavior) ??
            DragStartBehavior.start,
        enableInteractiveSelection: mapDesire<bool, SelectableText>(
                desires, (e) => e.enableInteractiveSelection) ??
            true,
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
    });
  }
}
