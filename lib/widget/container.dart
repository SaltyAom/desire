import 'package:flutter/material.dart';

import '../utilities.dart';

BoxDecoration _mergeBoxDecoration(BoxDecoration s1, BoxDecoration s2) =>
    s1.copyWith(
      color: s2.color,
      image: s2.image,
      border: s2.border,
      borderRadius: s2.borderRadius,
      boxShadow: s2.boxShadow,
      gradient: s2.gradient,
      backgroundBlendMode: s2.backgroundBlendMode,
      shape: s2.shape,
    );

BoxConstraints _mergeConstraints(BoxConstraints s1, BoxConstraints s2) =>
    s1.copyWith(
      minWidth: s2.minHeight,
      maxWidth: s2.maxHeight,
      minHeight: s2.minHeight,
      maxHeight: s2.maxHeight,
    );

extension DesireContainer on Container {
  Container desire(List desirable) {
    final desires = [
      this,
      Container(
        decoration: const BoxDecoration(),
        foregroundDecoration: const BoxDecoration(),
        constraints: const BoxConstraints(),
      ),
      ...desirable.whereType<Container>(),
    ].toList();

    return Container(
      child: child,
      alignment:
          mapDesire<AlignmentGeometry, Container>(desires, (e) => e.alignment),
      padding:
          mapDesire<EdgeInsetsGeometry, Container>(desires, (e) => e.padding),
      color: mapDesire<Color, Container>(desires, (e) => e.color),
      decoration: desires
          .map((e) => e.decoration)
          .whereType<BoxDecoration>()
          .reduce((acc, e) => _mergeBoxDecoration(acc, e)),
      foregroundDecoration: desires
          .map((e) => e.foregroundDecoration)
          .whereType<BoxDecoration>()
          .reduce((acc, e) => _mergeBoxDecoration(acc, e)),
      width: desires.map((e) {
        final c = e.constraints;
        if (c == null || c.minWidth != c.maxWidth) return null;
        return c.maxWidth;
      }).lastWhere((e) => e is double, orElse: () => null),
      height: desires.map((e) {
        final c = e.constraints;
        if (c == null || c.minHeight != c.maxHeight) return null;
        return c.maxHeight;
      }).lastWhere((e) => e is double, orElse: () => null),
      constraints: desires
          .map((e) => e.constraints)
          .whereType<BoxConstraints>()
          .reduce((acc, e) => _mergeConstraints(acc, e)),
      margin:
          mapDesire<EdgeInsetsGeometry, Container>(desires, (e) => e.margin),
      transform: mapDesire<Matrix4, Container>(desires, (e) => e.transform),
      transformAlignment: mapDesire<AlignmentGeometry, Container>(
          desires, (e) => e.transformAlignment),
      clipBehavior: mapDesire<Clip, Container>(
          desires, (e) => e.clipBehavior, Clip.none)!,
    );
  }
}
