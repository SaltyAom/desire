import 'package:flutter/material.dart';

T? mapDesire<T, W extends Object>(
        List<W> desires, T? Function(W e) propertyCallback, [T? init]) =>
    desires
        .map(propertyCallback)
        .lastWhere((v) => v is T && v != init, orElse: () => init);
