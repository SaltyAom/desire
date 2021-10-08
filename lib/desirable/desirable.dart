import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Desirable extends StatelessWidget {
  Widget child;

  Desirable({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  build(context) {
    return child;
  }

  Desirable wrap(Widget Function(Widget child) builder) {
    child = builder(child);

    return this;
  }

  Desirable use(List<Widget Function(Widget)> desirable) {
    for (final desire in desirable) {
      child = desire(child);
    }

    return this;
  }
}

extension WrapDesirable on Widget {
  Desirable desirable() => Desirable(child: this);
}

// ignore: prefer_function_declarations_over_variables
// final createDesire =
//     (Widget Function(Widget child) create) => (Widget child) => create(child);

void a() {}
