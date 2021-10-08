import 'package:flutter/material.dart';

import '../core.dart';

// ignore: must_be_immutable
class Desirable extends StatelessWidget {
  Widget child;

  final BuildContext context;

  Desirable(
    this.child, {
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  build(context) {
    return child;
  }

  Desirable wrap(Widget Function(Widget child) builder) {
    child = builder(child);

    return this;
  }

  Desirable desire(String desires) {
    final provider = DesireProvider.of(context);

    final desirable = desires.split(" ").map((desire) => provider[desire]);
    final styles = desirable.whereType<Widget Function(Widget, BuildContext)>();

    for (final style in styles) {
      child = style(child, context);
    }

    return this;
  }
}

extension WrapDesirable on Widget {
  Desirable desirable(BuildContext context) =>
      Desirable(this, context: context);
}

// ignore: prefer_function_declarations_over_variables
final desirable = (
  Widget Function(Widget child, BuildContext context) create,
) =>
    (Widget child, BuildContext context) => create(child, context);
