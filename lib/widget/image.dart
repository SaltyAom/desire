import 'package:flutter/material.dart';

import '../core.dart';

extension DesireImage on Image {
  Image desire(List desirable) {
    final desires = [
      this,
      ...desirable.whereType<Image>(),
    ].toList();

    return Image(
      key: key,
      image: image,
      frameBuilder:
          mapDesire<Widget Function(BuildContext, Widget, int?, bool), Image>(
              desires, (e) => e.frameBuilder),
      loadingBuilder: mapDesire<
          Widget Function(BuildContext, Widget, ImageChunkEvent?),
          Image>(desires, (e) => e.loadingBuilder),
      errorBuilder:
          mapDesire<Widget Function(BuildContext, Object, StackTrace?), Image>(
              desires, (e) => e.errorBuilder),
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: mapDesire<double, Image>(desires, (e) => e.width),
      height: mapDesire<double, Image>(desires, (e) => e.height),
      color: mapDesire<Color, Image>(desires, (e) => e.color),
      opacity: mapDesire<Animation<double>, Image>(desires, (e) => e.opacity),
      colorBlendMode:
          mapDesire<BlendMode, Image>(desires, (e) => e.colorBlendMode),
      fit: mapDesire<BoxFit, Image>(desires, (e) => e.fit),
      alignment: mapDesire<AlignmentGeometry, Image>(
          desires, (e) => e.alignment, Alignment.center)!,
      repeat: mapDesire<ImageRepeat, Image>(
          desires, (e) => e.repeat, ImageRepeat.noRepeat)!,
      centerSlice: mapDesire<Rect, Image>(desires, (e) => e.centerSlice),
      matchTextDirection:
          mapDesire<bool, Image>(desires, (e) => e.matchTextDirection, false)!,
      gaplessPlayback:
          mapDesire<bool, Image>(desires, (e) => e.gaplessPlayback, false)!,
      isAntiAlias:
          mapDesire<bool, Image>(desires, (e) => e.isAntiAlias, false)!,
      filterQuality: mapDesire<FilterQuality, Image>(
          desires, (e) => e.filterQuality, FilterQuality.low)!,
    );
  }
}
