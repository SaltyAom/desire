import 'package:flutter/material.dart';

class DesireProvider extends InheritedWidget {
  final Map<String, Object> desires;

  // ignore: use_key_in_widget_constructors
  const DesireProvider({
    required Widget child,
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
        List<W> desires, T? Function(W e) propertyCallback, [T? init]) =>
    desires
        .map(propertyCallback)
        .lastWhere((v) => v is T && v != init, orElse: () => init);

typedef DesireBuilder<T extends Widget> = T Function(BuildContext context);

List<T> mapDesireBuilder<T extends Widget>(
        Iterable<Object?> desirable, BuildContext context) =>
    desirable.whereType<DesireBuilder<T>>().map((e) => e(context)).toList();

abstract class DesireMap {}
