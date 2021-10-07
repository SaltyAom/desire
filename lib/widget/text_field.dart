import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import '../core.dart';

InputDecoration _mergeInputDecoration(InputDecoration d1, InputDecoration d2) {
  return InputDecoration(
    icon: d1.icon ?? d2.icon,
    label: d1.label ?? d2.label,
    labelText: d1.labelText ?? d2.labelText,
    labelStyle: d1.labelStyle ?? d2.labelStyle,
    floatingLabelStyle: d1.floatingLabelStyle ?? d2.floatingLabelStyle,
    helperText: d1.helperText ?? d2.helperText,
    helperStyle: d1.helperStyle ?? d2.helperStyle,
    helperMaxLines: d1.helperMaxLines ?? d2.helperMaxLines,
    hintText: d1.hintText ?? d2.hintText,
    hintStyle: d1.hintStyle ?? d2.hintStyle,
    hintTextDirection: d1.hintTextDirection ?? d2.hintTextDirection,
    hintMaxLines: d1.hintMaxLines ?? d2.hintMaxLines,
    errorText: d1.errorText ?? d2.errorText,
    errorStyle: d1.errorStyle ?? d2.errorStyle,
    errorMaxLines: d1.errorMaxLines ?? d2.errorMaxLines,
    floatingLabelBehavior: d1.floatingLabelBehavior ?? d2.floatingLabelBehavior,
    isCollapsed: d1.isCollapsed,
    isDense: d1.isDense ?? d2.isDense,
    contentPadding: d1.contentPadding ?? d2.contentPadding,
    prefixIcon: d1.prefixIcon ?? d2.prefixIcon,
    prefix: d1.prefix ?? d2.prefix,
    prefixText: d1.prefixText ?? d2.prefixText,
    prefixStyle: d1.prefixStyle ?? d2.prefixStyle,
    prefixIconConstraints: d1.prefixIconConstraints ?? d2.prefixIconConstraints,
    suffixIcon: d1.suffixIcon ?? d2.suffixIcon,
    suffix: d1.suffix ?? d2.suffix,
    suffixText: d1.suffixText ?? d2.suffixText,
    suffixStyle: d1.suffixStyle ?? d2.suffixStyle,
    suffixIconConstraints: d1.suffixIconConstraints ?? d2.suffixIconConstraints,
    counter: d1.counter ?? d2.counter,
    counterText: d1.counterText ?? d2.counterText,
    counterStyle: d1.counterStyle ?? d2.counterStyle,
    filled: d1.filled ?? d2.filled,
    fillColor: d1.fillColor ?? d2.fillColor,
    focusColor: d1.focusColor ?? d2.focusColor,
    hoverColor: d1.hoverColor ?? d2.hoverColor,
    errorBorder: d1.errorBorder ?? d2.errorBorder,
    focusedBorder: d1.focusedBorder ?? d2.focusedBorder,
    focusedErrorBorder: d1.focusedErrorBorder ?? d2.focusedErrorBorder,
    disabledBorder: d1.disabledBorder ?? d2.disabledBorder,
    enabledBorder: d1.enabledBorder ?? d2.enabledBorder,
    border: d1.border ?? d2.border,
    enabled: d1.enabled,
    semanticCounterText: d1.semanticCounterText ?? d2.semanticCounterText,
    alignLabelWithHint: d1.alignLabelWithHint ?? d2.alignLabelWithHint,
    constraints: d1.constraints ?? d2.constraints,
  );
}

extension DesireTextField on TextField {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = [
        style != null ? this : const TextField(style: TextStyle()),
        ...desirable.whereType<TextField>(),
        ...desirable
            .whereType<TextStyle>()
            .map((style) => TextField(style: style))
      ].toList();

      return styles;
    }

    return Builder(builder: (context) {
      final desires = getDesire(context);

      return TextField(
        controller: controller,
        focusNode: mapDesire<FocusNode, TextField>(desires, (e) => e.focusNode),
        decoration: desires
            .map((e) => e.decoration)
            .whereType<InputDecoration>()
            .reduce((acc, e) => _mergeInputDecoration(acc, e)),
        keyboardType:
            mapDesire<TextInputType, TextField>(desires, (e) => e.keyboardType),
        textInputAction: mapDesire<TextInputAction, TextField>(
            desires, (e) => e.textInputAction),
        textCapitalization: mapDesire<TextCapitalization, TextField>(
            desires, (e) => e.textCapitalization, TextCapitalization.none)!,
        style: desires
            .map((e) => e.style)
            .whereType<TextStyle>()
            .reduce((acc, e) => acc.merge(e)),
        textAlign: mapDesire<TextAlign, TextField>(
            desires, (e) => e.textAlign, TextAlign.start)!,
        textAlignVertical: mapDesire<TextAlignVertical, TextField>(
            desires, (e) => e.textAlignVertical),
        textDirection: mapDesire<TextDirection, TextField>(
            desires, (e) => e.textDirection),
        readOnly:
            mapDesire<bool, TextField>(desires, (e) => e.readOnly, false)!,
        toolbarOptions: mapDesire<ToolbarOptions, TextField>(
            desires, (e) => e.toolbarOptions),
        showCursor: mapDesire<bool, TextField>(desires, (e) => e.showCursor),
        autofocus:
            mapDesire<bool, TextField>(desires, (e) => e.autofocus, false)!,
        obscuringCharacter: mapDesire<String, TextField>(
            desires, (e) => e.obscuringCharacter, '•')!,
        obscureText:
            mapDesire<bool, TextField>(desires, (e) => e.obscureText, false)!,
        autocorrect:
            mapDesire<bool, TextField>(desires, (e) => e.autocorrect, true)!,
        smartDashesType: mapDesire<SmartDashesType, TextField>(
            desires, (e) => e.smartDashesType),
        smartQuotesType: mapDesire<SmartQuotesType, TextField>(
            desires, (e) => e.smartQuotesType),
        enableSuggestions: mapDesire<bool, TextField>(
            desires, (e) => e.enableSuggestions, true)!,
        maxLines: mapDesire<int, TextField>(desires, (e) => e.maxLines, 1)!,
        minLines: mapDesire<int, TextField>(desires, (e) => e.minLines),
        expands: mapDesire<bool, TextField>(desires, (e) => e.expands, false)!,
        maxLength: mapDesire<int, TextField>(desires, (e) => e.maxLength),
        maxLengthEnforcement: mapDesire<MaxLengthEnforcement, TextField>(
            desires, (e) => e.maxLengthEnforcement),
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onSubmitted: onSubmitted,
        onAppPrivateCommand: onAppPrivateCommand,
        inputFormatters: desires
            .map((e) => e.inputFormatters)
            .whereType<List<TextInputFormatter>>()
            .expand((e) => e)
            .toList(),
        enabled: mapDesire<bool, TextField>(desires, (e) => e.enabled),
        cursorWidth:
            mapDesire<double, TextField>(desires, (e) => e.cursorWidth, 2.0)!,
        cursorHeight:
            mapDesire<double, TextField>(desires, (e) => e.cursorHeight),
        cursorRadius:
            mapDesire<Radius, TextField>(desires, (e) => e.cursorRadius),
        cursorColor: mapDesire<Color, TextField>(desires, (e) => e.cursorColor),
        selectionHeightStyle: mapDesire<BoxHeightStyle, TextField>(
            desires, (e) => e.selectionHeightStyle, BoxHeightStyle.tight)!,
        selectionWidthStyle: mapDesire<BoxWidthStyle, TextField>(
            desires, (e) => e.selectionWidthStyle, BoxWidthStyle.tight)!,
        keyboardAppearance: mapDesire<Brightness, TextField>(
            desires, (e) => e.keyboardAppearance),
        scrollPadding: mapDesire<EdgeInsets, TextField>(
            desires, (e) => e.scrollPadding, const EdgeInsets.all(20))!,
        dragStartBehavior: mapDesire<DragStartBehavior, TextField>(
            desires, (e) => e.dragStartBehavior, DragStartBehavior.start)!,
        enableInteractiveSelection: mapDesire<bool, TextField>(
            desires, (e) => e.enableInteractiveSelection, true)!,
        selectionControls: mapDesire<TextSelectionControls, TextField>(
            desires, (e) => e.selectionControls),
        onTap: onTap,
        mouseCursor:
            mapDesire<MouseCursor, TextField>(desires, (e) => e.mouseCursor),
        buildCounter: mapDesire<
            Widget? Function(
          BuildContext, {
          required int currentLength,
          required bool isFocused,
          required int? maxLength,
        }),
            TextField>(desires, (e) => e.buildCounter),
        scrollController: scrollController,
        scrollPhysics: mapDesire<ScrollPhysics, TextField>(
            desires, (e) => e.scrollPhysics),
        autofillHints: autofillHints,
        restorationId: restorationId,
        enableIMEPersonalizedLearning: mapDesire<bool, TextField>(
            desires, (e) => e.enableIMEPersonalizedLearning, true)!,
      );
    });
  }
}
