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

  Desirable use(List<Widget Function(Widget)> desirable) {
    for (final desire in desirable) {
      child = desire(child);
    }

    return this;
  }
}

extension WrapDesirable on Widget {
  Desirable desirable([List<Widget Function(Widget)> desirable = const []]) =>
      Desirable(child: this).use(desirable);
}
