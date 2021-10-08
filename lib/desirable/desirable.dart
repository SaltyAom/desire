import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Desirable extends StatelessWidget {
  Widget child;

  Desirable(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  build(context) {
    return child;
  }

  wrap(Widget Function(Widget child) builder) {
    child = builder(child);
  }
}

extension WrapDesirable on Widget {
  Desirable desirable() => Desirable(this);
}
