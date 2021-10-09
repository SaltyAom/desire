import 'package:flutter/material.dart';

// ignore: camel_case_types
class fr {
  static p(double padding) => (Widget child) => Padding(
        child: child,
        padding: EdgeInsets.all(padding),
      );
}
