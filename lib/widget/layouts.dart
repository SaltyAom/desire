import 'package:flutter/material.dart';

import '../core.dart';

List<Row> toRows(List<Object?> widgets) =>
    widgets.where((e) => e is Column || e is Row).map((el) {
      if (el is Row) return el;

      final e = el as Column;

      return Row(
        mainAxisAlignment: e.mainAxisAlignment,
        mainAxisSize: e.mainAxisSize,
        crossAxisAlignment: e.crossAxisAlignment,
        textDirection: e.textDirection,
        verticalDirection: e.verticalDirection,
        textBaseline: e.textBaseline,
      );
    }).toList();

extension DesireColumn on Column {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = toRows([this, ...desirable].toList());

      return styles;
    }

    return Builder(
      builder: (context) {
        final desires = getDesire(context);

        return Column(
          children: children,
          mainAxisAlignment: mapDesire<MainAxisAlignment, Row>(
              desires, (e) => e.mainAxisAlignment, MainAxisAlignment.start)!,
          mainAxisSize: mapDesire<MainAxisSize, Row>(
              desires, (e) => e.mainAxisSize, MainAxisSize.max)!,
          crossAxisAlignment: mapDesire<CrossAxisAlignment, Row>(
              desires, (e) => e.crossAxisAlignment, CrossAxisAlignment.center)!,
          textDirection:
              mapDesire<TextDirection, Row>(desires, (e) => e.textDirection),
          verticalDirection: mapDesire<VerticalDirection, Row>(
              desires, (e) => e.verticalDirection, VerticalDirection.down)!,
          textBaseline:
              mapDesire<TextBaseline, Row>(desires, (e) => e.textBaseline),
        );
      },
    );
  }
}

extension DesireRow on Row {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = toRows([this, ...desirable].toList());

      return styles;
    }

    return Builder(
      builder: (context) {
        final desires = getDesire(context);

        return Row(
          children: children,
          mainAxisAlignment: mapDesire<MainAxisAlignment, Row>(
              desires, (e) => e.mainAxisAlignment, MainAxisAlignment.start)!,
          mainAxisSize: mapDesire<MainAxisSize, Row>(
              desires, (e) => e.mainAxisSize, MainAxisSize.max)!,
          crossAxisAlignment: mapDesire<CrossAxisAlignment, Row>(
              desires, (e) => e.crossAxisAlignment, CrossAxisAlignment.center)!,
          textDirection:
              mapDesire<TextDirection, Row>(desires, (e) => e.textDirection),
          verticalDirection: mapDesire<VerticalDirection, Row>(
              desires, (e) => e.verticalDirection, VerticalDirection.down)!,
          textBaseline:
              mapDesire<TextBaseline, Row>(desires, (e) => e.textBaseline),
        );
      },
    );
  }
}

extension DesireStack on Stack {
  Builder desire(String desires) {
    getDesire(BuildContext context) {
      final provider = DesireProvider.of(context);

      final desirable = desires.split(" ").map((desire) => provider[desire]);
      final styles = [this, ...desirable].whereType<Stack>().toList();

      return styles;
    }

    return Builder(
      builder: (context) {
        final desires = getDesire(context);

        return Stack(
          children: children,
          alignment: mapDesire<AlignmentGeometry, Stack>(
              desires, (e) => e.alignment, AlignmentDirectional.topStart)!,
          textDirection:
              mapDesire<TextDirection, Stack>(desires, (e) => e.textDirection),
          fit: mapDesire<StackFit, Stack>(
              desires, (e) => e.fit, StackFit.loose)!,
          clipBehavior: mapDesire<Clip, Stack>(
              desires, (e) => e.clipBehavior, Clip.hardEdge)!,
        );
      },
    );
  }
}
