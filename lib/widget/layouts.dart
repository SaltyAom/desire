import 'package:flutter/material.dart';

import '../utilities.dart';

Row columnToRow(Column e) => Row(
      mainAxisAlignment: e.mainAxisAlignment,
      mainAxisSize: e.mainAxisSize,
      crossAxisAlignment: e.crossAxisAlignment,
      textDirection: e.textDirection,
      verticalDirection: e.verticalDirection,
      textBaseline: e.textBaseline,
    );

extension DesireColumn on Column {
  Column desire(List desirable) {
    final desires = [this, ...desirable]
        .map((e) {
          if (e is Row) return e;
          if (e is Column) return columnToRow(e);

          return null;
        })
        .whereType<Row>()
        .toList();

    return Column(
      key: key,
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
  }
}

extension DesireRow on Row {
  Row desire(List desirable) {
    final desires = [this, ...desirable]
        .map((e) {
          if (e is Row) return e;
          if (e is Column) return columnToRow(e);

          return null;
        })
        .whereType<Row>()
        .toList();

    return Row(
      key: key,
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
  }
}

extension DesireStack on Stack {
  Stack desire(List desirable) {
    final desires = [this, ...desirable.whereType<Stack>()].toList();

    return Stack(
      key: key,
      children: children,
      alignment: mapDesire<AlignmentGeometry, Stack>(
          desires, (e) => e.alignment, AlignmentDirectional.topStart)!,
      textDirection:
          mapDesire<TextDirection, Stack>(desires, (e) => e.textDirection),
      fit: mapDesire<StackFit, Stack>(desires, (e) => e.fit, StackFit.loose)!,
      clipBehavior: mapDesire<Clip, Stack>(
          desires, (e) => e.clipBehavior, Clip.hardEdge)!,
    );
  }
}
