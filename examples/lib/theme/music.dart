import 'package:flutter/material.dart';

import 'package:desire/floret/floret.dart';

import 'package:flutter/rendering.dart';

@immutable
class MusicTheme {
  const MusicTheme();

  static const accent = Color.fromRGBO(59, 26, 41, 1);
  static const primary = Color.fromRGBO(94, 42, 66, 1);

  static final cover = [
    fr.fullWidth,
    fr.rounded(4),
    fr.aspectRatio(1),
    fr.bg(MusicTheme.primary),
  ];

  static final title = [
    frt.size(28),
    frt.color(Colors.white),
    frt.bold,
  ];
  static final artist = [
    frt.color(Colors.grey.shade300),
    frt.size(16),
  ];

  static final time = [
    frt.color(Colors.grey.shade300),
    frt.size(12),
    frt.w300,
  ];

  static final detailContainer = [
    fr.pt(40),
    fr.px(8),
    fr.pb(28),
  ];

  static final centerLayout = [frr.mainCenter, frr.crossCenter];
  static final betweenLayout = [frr.mainBetween, frr.crossCenter];

  static const action = IconButton(
    icon: Icon(Icons.play_arrow),
    onPressed: null,
    iconSize: 48,
    padding: EdgeInsets.all(12),
    color: Colors.white,
  );

  static final subAction = IconButton(
    icon: const Icon(Icons.play_arrow),
    onPressed: null,
    iconSize: 32,
    padding: const EdgeInsets.all(12),
    color: Colors.grey.shade300,
  );

  static final slider = SliderTheme(
    child: Slider(
      value: 0,
      onChanged: null,
      activeColor: Colors.white,
      inactiveColor: Colors.white.withOpacity(.5),
    ),
    data: const SliderThemeData(
      trackHeight: 2,
      thumbShape: RoundSliderThumbShape(
        elevation: 0,
        enabledThumbRadius: 6,
      ),
    ),
  );
}
