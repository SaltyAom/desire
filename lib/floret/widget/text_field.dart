import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import 'input_decoration.dart';

@immutable
// ignore: camel_case_types
class frtf extends frid {
  const frtf()
      : assert(true, "You shouldn't construct frid (Floret Input Decoration)");

  static TextField focusNode(FocusNode focusNode) =>
      TextField(focusNode: focusNode);
  static TextField decoration(InputDecoration inputDecoration) =>
      TextField(decoration: inputDecoration);

  static TextField keyboardType(TextInputType keyboardType) =>
      TextField(keyboardType: keyboardType);

  static const dateTimeKeyboard = TextField(
    keyboardType: TextInputType.datetime,
  );
  static const emailKeyboard = TextField(
    keyboardType: TextInputType.emailAddress,
  );
  static const multilineKeyboard = TextField(
    keyboardType: TextInputType.multiline,
  );
  static const nameKeyboard = TextField(
    keyboardType: TextInputType.name,
  );
  static const numberKeyboard = TextField(
    keyboardType: TextInputType.number,
  );
  static const phoneKeyboard = TextField(
    keyboardType: TextInputType.phone,
  );
  static const addressKeyboard = TextField(
    keyboardType: TextInputType.streetAddress,
  );
  static const textKeyboard = TextField(
    keyboardType: TextInputType.text,
  );
  static const urlKeyboard = TextField(
    keyboardType: TextInputType.url,
  );
  static const visiblePasswordKeyboard = TextField(
    keyboardType: TextInputType.visiblePassword,
  );
  static const decimalKeyboard = TextField(
    keyboardType: TextInputType.numberWithOptions(
      decimal: true,
    ),
  );
  static const positiveNumbericKeyboard = TextField(
    keyboardType: TextInputType.numberWithOptions(
      signed: true,
    ),
  );
  static const positiveDecimalKeyboard = TextField(
    keyboardType: TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
  );

  static TextField textInputAction(TextInputAction action) =>
      TextField(textInputAction: action);

  static TextField textCapitalization([
    TextCapitalization capitalization = TextCapitalization.sentences,
  ]) =>
      TextField(textCapitalization: capitalization);
  static TextField capitalization([
    TextCapitalization capitalization = TextCapitalization.sentences,
  ]) =>
      textCapitalization(capitalization);
  static const capitalizeWords =
      TextField(textCapitalization: TextCapitalization.words);
  static const capitalizeSentences =
      TextField(textCapitalization: TextCapitalization.sentences);
  static const capitalizeCharacters =
      TextField(textCapitalization: TextCapitalization.characters);
  static const capitalizeNone =
      TextField(textCapitalization: TextCapitalization.none);

  static TextField textAlign(TextAlign textAlign) => TextField(
        textAlign: textAlign,
      );
  static const textStart = TextField(
    textAlign: TextAlign.start,
  );
  static const textCenter = TextField(
    textAlign: TextAlign.center,
  );
  static const textEnd = TextField(
    textAlign: TextAlign.end,
  );
  static const textLeft = TextField(
    textAlign: TextAlign.left,
  );
  static const textRight = TextField(
    textAlign: TextAlign.right,
  );
  static const textJustify = TextField(
    textAlign: TextAlign.justify,
  );

  static TextField textAlignVertical(TextAlignVertical textVerticalAlign) =>
      TextField(
        textAlignVertical: textVerticalAlign,
      );
  static TextField textVertical(TextAlignVertical textVerticalAlign) =>
      TextField(
        textAlignVertical: textVerticalAlign,
      );

  static const textTop = TextField(
    textAlignVertical: TextAlignVertical.top,
  );
  static const textVerticalCenter = TextField(
    textAlignVertical: TextAlignVertical.center,
  );
  static const textBottom = TextField(
    textAlignVertical: TextAlignVertical.bottom,
  );

  static TextField readOnly([bool readOnly = true]) => TextField(
        readOnly: readOnly,
      );

  static TextField toolbarOptions(ToolbarOptions toolbar) =>
      TextField(toolbarOptions: toolbar);
  static TextField toolbar({
    copy = false,
    cut = false,
    paste = false,
    selectAll = false,
  }) =>
      TextField(
        toolbarOptions: ToolbarOptions(
          copy: copy,
          cut: cut,
          paste: paste,
          selectAll: selectAll,
        ),
      );

  static TextField showCursor([bool showCursor = true]) =>
      TextField(showCursor: showCursor);

  static TextField obscuringCharacter([String character = '•']) =>
      TextField(obscuringCharacter: character);
  static TextField obscureCharacter([String character = '•']) =>
      obscuringCharacter(character);

  static TextField obscureText([bool obscure = true]) =>
      TextField(obscureText: obscure);
  static TextField obscure([bool obscure = true]) => obscureText(obscure);

  static TextField autocorrect([bool autocorrect = true]) =>
      TextField(autocorrect: autocorrect);

  static TextField smartDashesType(SmartDashesType type) =>
      TextField(smartDashesType: type);
  static TextField smartQuotesType(SmartQuotesType type) =>
      TextField(smartQuotesType: type);

  static TextField enableSuggestions([bool enable = true]) =>
      TextField(enableSuggestions: enable);
  static TextField suggestions([bool enable = true]) =>
      enableSuggestions(enable);

  static TextField maxLines(int maxLines) => TextField(maxLines: maxLines);
  static TextField minLines(int minLines) => TextField(minLines: minLines);

  static TextField expands([bool expands = true]) =>
      TextField(expands: expands);

  static TextField maxLength(int maxLength) => TextField(maxLength: maxLength);

  static TextField maxLengthEnforcement(MaxLengthEnforcement enforcement) =>
      TextField(maxLengthEnforcement: enforcement);

  static TextField inputFormatters(List<TextInputFormatter> formatters) =>
      TextField(inputFormatters: formatters);

  static TextField enabled([bool enable = true]) => TextField(enabled: enable);
  static TextField cursorWidth(double width) => TextField(cursorWidth: width);
  static TextField cursorHeight(double height) =>
      TextField(cursorHeight: height);
  static TextField cursorRadius(Radius radius) =>
      TextField(cursorRadius: radius);
  static TextField cursorRounded([double radius = 999999]) =>
      TextField(cursorRadius: Radius.circular(radius));
  static TextField cursorColor(Color color) => TextField(cursorColor: color);

  static TextField selectionHeightStyle(BoxHeightStyle style) =>
      TextField(selectionHeightStyle: style);
  static TextField selectionWidthStyle(BoxWidthStyle style) =>
      TextField(selectionWidthStyle: style);

  static TextField keyboardAppearance(Brightness brightness) =>
      TextField(keyboardAppearance: brightness);

  static const lightKeyboard = TextField(keyboardAppearance: Brightness.light);
  static const darkKeyboard = TextField(keyboardAppearance: Brightness.dark);

  static TextField scrollPadding(EdgeInsets padding) =>
      TextField(scrollPadding: padding);

  static TextField dragStartBehavior(DragStartBehavior behavior) =>
      TextField(dragStartBehavior: behavior);

  static const dragStart =
      TextField(dragStartBehavior: DragStartBehavior.start);
  static const dragDown = TextField(dragStartBehavior: DragStartBehavior.down);

  static TextField enableInteractiveSelection([bool enable = true]) =>
      TextField(enableInteractiveSelection: enable);
  static TextField selection([bool enable = true]) =>
      enableInteractiveSelection(enable);

  static TextField selectionControls(TextSelectionControls controls) =>
      TextField(selectionControls: controls);

  static TextField mouseCursor(MouseCursor cursor) =>
      TextField(mouseCursor: cursor);

  static TextField buildCounter(
    Widget? Function(
      BuildContext, {
      required int currentLength,
      required bool isFocused,
      required int? maxLength,
    })
        builder,
  ) =>
      TextField(buildCounter: builder);

  static TextField scrollPhysics(
    ScrollPhysics physics,
  ) =>
      TextField(scrollPhysics: physics);

  static TextField autofillHints(
    Iterable<String> hints,
  ) =>
      TextField(autofillHints: hints);

  static TextField enableIMEPersonalizedLearning([bool enable = true]) =>
      TextField(enableIMEPersonalizedLearning: enable);
}
