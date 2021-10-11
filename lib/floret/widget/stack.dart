import 'package:flutter/material.dart';

@immutable
// ignore: camel_case_types
class frs {
  const frs() : assert(true, "You shouldn't construct frs (Floret Stack)");

  static Stack alignment(AlignmentDirectional alignment) => Stack(
        alignment: alignment,
      );
  static align(AlignmentDirectional alignment) => Stack(
        alignment: alignment,
      );
  static final topLeft = Stack(
    alignment: Alignment.topLeft,
  );
  static final topCenter = Stack(
    alignment: Alignment.topCenter,
  );
  static final topRight = Stack(
    alignment: Alignment.topRight,
  );
  static final centerLeft = Stack(
    alignment: Alignment.centerLeft,
  );
  static final center = Stack(
    alignment: Alignment.center,
  );
  static final centerRight = Stack(
    alignment: Alignment.centerRight,
  );
  static final bottomLeft = Stack(
    alignment: Alignment.bottomLeft,
  );
  static final bottomCenter = Stack(
    alignment: Alignment.bottomCenter,
  );
  static final bottomRight = Stack(
    alignment: Alignment.bottomRight,
  );

  static textDirection(TextDirection textDirection) => Stack(
        textDirection: textDirection,
      );
  static final ltr = Stack(
    textDirection: TextDirection.ltr,
  );
  static final rtl = Stack(
    textDirection: TextDirection.rtl,
  );

  static fit(StackFit fit) => Stack(
        fit: fit,
      );
  static final expand = Stack(
    fit: StackFit.expand,
  );
  static final loose = Stack(
    fit: StackFit.loose,
  );
  static final passthrough = Stack(
    fit: StackFit.passthrough,
  );

  static clipBehavior(Clip clip) => Stack(
        clipBehavior: clip,
      );
  static clip(Clip clip) => Stack(
        clipBehavior: clip,
      );
  static final antiAlias = Stack(
    clipBehavior: Clip.antiAlias,
  );
  static final antiAliasWithSaveLayer = Stack(
    clipBehavior: Clip.antiAliasWithSaveLayer,
  );
  static final hardEdge = Stack(
    clipBehavior: Clip.hardEdge,
  );
  static final clipNone = Stack(
    clipBehavior: Clip.none,
  );
}
