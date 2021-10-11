import 'package:flutter/material.dart';

import 'package:desire/desire.dart';
import 'package:desire/floret/floret.dart';

import 'theme/music.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: MusicTheme.accent,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: MusicTheme.primary),
      ),
      home: const Music(),
    );
  }
}

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MusicTheme.accent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.expand_more, size: 28),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, size: 28),
            )
          ],
        ),
        body: Column(children: [
          Image.network(
            "https://i.scdn.co/image/ab67616d0000b273fda602632b312456528dd12a",
          ) //
              .desirable(MusicTheme.cover)
              .desirable([fr.px(20)]),

          // * <Start> Detail Section */
          Row(children: [
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(
                Icons.thumb_down_off_alt,
              ),
            ),
            Column(children: [
              const Text("Paradise") //
                  .desire(MusicTheme.title)
                  .desirable([fr.pb(12)]),
              const Text("Sound souler").desire(MusicTheme.artist)
            ]).desire(MusicTheme.centerLayout),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.white,
              ),
            ),
          ]) //
              .desire(MusicTheme.betweenLayout)
              .desirable(MusicTheme.detailContainer),
          // * </End> Detail Section */

          // * <Start> Slider / Timer Section */
          MusicTheme.slider(
            context,
            Slider(
              onChanged: (_) {},
              value: 42,
              min: 0,
              max: 146,
              activeColor: Colors.white,
              thumbColor: Colors.white,
              inactiveColor: Colors.white70,
            ).desirable([fr.height(28)]),
          ),
          Row(
            children: [
              const Text("0:42").desire(MusicTheme.time),
              const Text("2:26").desire(MusicTheme.time),
            ],
          ) //
              .desire(MusicTheme.betweenLayout)
              .desirable([fr.px(20), fr.pb(20)]),
          // * </End> Slider / Timer Section */

          // * <Start> Control Section */
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shuffle),
              ).desire([MusicTheme.subAction]),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_previous),
              ).desire([MusicTheme.action]),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow),
              ) //
                  .desire([MusicTheme.action]) //
                  .desirable([
                fr.bg(MusicTheme.primary),
                fr.rounded(),
              ]),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_next),
              ).desire([MusicTheme.action]),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.repeat),
              ).desire([MusicTheme.subAction]),
            ],
          ) //
              .desire(MusicTheme.betweenLayout)
              .desirable([fr.px(8)])
          // * </End> Control Section */
        ]) //
            .desire(MusicTheme.centerLayout)
            .desirable([
          (Widget child) => SafeArea(
                top: false,
                child: child,
              )
        ])
          ..use([fr.px(16), fr.bg(MusicTheme.accent)]));
  }
}
