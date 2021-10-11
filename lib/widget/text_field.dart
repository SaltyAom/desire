import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import '../utilities.dart';

InputDecoration _mergeInputDecoration(InputDecoration d1, InputDecoration d2) =>
    InputDecoration(
      icon: d2.icon ?? d1.icon,
      label: d2.label ?? d1.label,
      labelText: d2.labelText ?? d1.labelText,
      labelStyle: d2.labelStyle?.merge(d1.labelStyle) ?? d1.labelStyle,
      floatingLabelStyle: d2.floatingLabelStyle ?? d1.floatingLabelStyle,
      helperText: d2.helperText ?? d1.helperText,
      helperStyle: d2.helperStyle?.merge(d1.helperStyle) ?? d1.helperStyle,
      helperMaxLines: d2.helperMaxLines ?? d1.helperMaxLines,
      hintText: d2.hintText ?? d1.hintText,
      hintStyle: d2.hintStyle?.merge(d1.hintStyle) ?? d1.hintStyle,
      hintTextDirection: d2.hintTextDirection ?? d1.hintTextDirection,
      hintMaxLines: d2.hintMaxLines ?? d1.hintMaxLines,
      errorText: d2.errorText ?? d1.errorText,
      errorStyle: d2.errorStyle?.merge(d1.errorStyle) ?? d1.errorStyle,
      errorMaxLines: d2.errorMaxLines ?? d1.errorMaxLines,
      floatingLabelBehavior:
          d2.floatingLabelBehavior ?? d1.floatingLabelBehavior,
      isCollapsed: d2.isCollapsed,
      isDense: d2.isDense ?? d1.isDense,
      contentPadding: d2.contentPadding ?? d1.contentPadding,
      prefixIcon: d2.prefixIcon ?? d1.prefixIcon,
      prefix: d2.prefix ?? d1.prefix,
      prefixText: d2.prefixText ?? d1.prefixText,
      prefixStyle: d2.prefixStyle?.merge(d1.prefixStyle) ?? d1.prefixStyle,
      prefixIconConstraints:
          d2.prefixIconConstraints ?? d1.prefixIconConstraints,
      suffixIcon: d2.suffixIcon ?? d1.suffixIcon,
      suffix: d2.suffix ?? d1.suffix,
      suffixText: d2.suffixText ?? d1.suffixText,
      suffixStyle: d2.suffixStyle?.merge(d1.suffixStyle) ?? d1.suffixStyle,
      suffixIconConstraints:
          d2.suffixIconConstraints ?? d1.suffixIconConstraints,
      counter: d2.counter ?? d1.counter,
      counterText: d2.counterText ?? d1.counterText,
      counterStyle: d2.counterStyle?.merge(d1.counterStyle) ?? d1.counterStyle,
      filled: d2.filled ?? d1.filled,
      fillColor: d2.fillColor ?? d1.fillColor,
      focusColor: d2.focusColor ?? d1.focusColor,
      hoverColor: d2.hoverColor ?? d1.hoverColor,
      errorBorder:
          d2.errorBorder?.copyWith(borderSide: d1.errorBorder?.borderSide) ??
              d1.errorBorder,
      focusedBorder: d2.focusedBorder
              ?.copyWith(borderSide: d1.focusedBorder?.borderSide) ??
          d1.focusedBorder,
      focusedErrorBorder: d2.focusedBorder
              ?.copyWith(borderSide: d1.focusedBorder?.borderSide) ??
          d1.focusedBorder,
      disabledBorder: d2.disabledBorder
              ?.copyWith(borderSide: d1.disabledBorder?.borderSide) ??
          d1.disabledBorder,
      enabledBorder: d2.enabledBorder
              ?.copyWith(borderSide: d1.enabledBorder?.borderSide) ??
          d1.enabledBorder,
      border:
          d2.border?.copyWith(borderSide: d1.border?.borderSide) ?? d1.border,
      enabled: d2.enabled,
      semanticCounterText: d2.semanticCounterText ?? d1.semanticCounterText,
      alignLabelWithHint: d2.alignLabelWithHint ?? d1.alignLabelWithHint,
      constraints: d2.constraints ?? d1.constraints,
    );

extension DesireTextField on TextField {
  TextField desire(List desirable) {
    final desires = [
      this,
      TextField(
        style: style ?? const TextStyle(),
        decoration: decoration ?? const InputDecoration(),
      ),
      ...desirable
    ]
        .map((e) {
          if (e is TextField) return e;
          if (e is TextStyle) return TextField(style: e);
          if (e is InputDecoration) return TextField(decoration: e);

          return null;
        })
        .whereType<TextField>()
        .toList();

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
      textDirection:
          mapDesire<TextDirection, TextField>(desires, (e) => e.textDirection),
      readOnly: mapDesire<bool, TextField>(desires, (e) => e.readOnly, false)!,
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
      scrollPhysics:
          mapDesire<ScrollPhysics, TextField>(desires, (e) => e.scrollPhysics),
      autofillHints: autofillHints,
      restorationId: restorationId,
      enableIMEPersonalizedLearning: mapDesire<bool, TextField>(
          desires, (e) => e.enableIMEPersonalizedLearning, true)!,
    );
  }
}

extension DesireTextFormField on TextFormField {
  TextFormField desire(
    List desirable, {
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    TextStyle? style,
    InputDecoration? decoration,
    ScrollController? scrollController,
    Iterable<String>? autofillHints,
  }) {
    final desires = [
      decoration,
      TextField(
        style: style ?? const TextStyle(),
        decoration: decoration ?? const InputDecoration(),
      ),
      ...desirable
    ]
        .map((e) {
          if (e is TextField) return e;
          if (e is TextStyle) return TextField(style: e);
          if (e is InputDecoration) return TextField(decoration: e);

          return null;
        })
        .whereType<TextField>()
        .toList();

    return TextFormField(
      key: key,
      controller: controller,
      initialValue: initialValue,
      scrollController: scrollController,
      autofillHints: autofillHints,
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
      textDirection:
          mapDesire<TextDirection, TextField>(desires, (e) => e.textDirection),
      readOnly: mapDesire<bool, TextField>(desires, (e) => e.readOnly, false)!,
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
      onSaved: onSaved,
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
      keyboardAppearance: mapDesire<Brightness, TextField>(
          desires, (e) => e.keyboardAppearance),
      scrollPadding: mapDesire<EdgeInsets, TextField>(
          desires, (e) => e.scrollPadding, const EdgeInsets.all(20))!,
      enableInteractiveSelection: mapDesire<bool, TextField>(
          desires, (e) => e.enableInteractiveSelection, true)!,
      selectionControls: mapDesire<TextSelectionControls, TextField>(
          desires, (e) => e.selectionControls),
      buildCounter: mapDesire<
          Widget? Function(
        BuildContext, {
        required int currentLength,
        required bool isFocused,
        required int? maxLength,
      }),
          TextField>(desires, (e) => e.buildCounter),
      scrollPhysics:
          mapDesire<ScrollPhysics, TextField>(desires, (e) => e.scrollPhysics),
      restorationId: restorationId,
      enableIMEPersonalizedLearning: mapDesire<bool, TextField>(
          desires, (e) => e.enableIMEPersonalizedLearning, true)!,
      validator: validator,
      autovalidateMode: autovalidateMode,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
    );
  }
}
