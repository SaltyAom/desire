import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pausable_timer/pausable_timer.dart';

import 'package:desire/desire.dart';
import 'package:floret/floret.dart';

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

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> with SingleTickerProviderStateMixin {
  double currentTime = 42;
  double limit = 146 + 0.9;
  bool playing = false;

  late final PausableTimer timer;
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 160),
    );

    timer = PausableTimer(const Duration(milliseconds: 8), () {
      timer.reset();

      if (currentTime < (limit - 0.025)) {
        setState(() {
          currentTime += 0.0125;
        });

        timer.start();
      } else {
        setState(() {
          playing = false;
        });

        controller.reverse();
        timer.pause();
      }
    });
  }

  void handlePlay() {
    if (playing) {
      controller.reverse();
      timer.pause();
    } else {
      if (currentTime >= limit - 0.025) {
        setState(() {
          currentTime = 0;
        });
      }

      controller.forward();
      timer.start();
    }

    setState(() {
      playing = !playing;
    });
  }

  String formatMinute(double time) {
    final t = time.toInt();
    final minute = (t / 60).floor();
    final seconds = (t % 60).floor();
    final formattedSeconds = seconds > 9 ? "$seconds" : "0$seconds";

    return "$minute:$formattedSeconds";
  }

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
              color: Colors.grey.shade400,
              icon: const Icon(Icons.thumb_down_off_alt),
            ),
            Column(children: [
              const Text("Paradise") //
                  .desire(MusicTheme.title)
                  .desirable([fr.pb(12)]),
              const Text("Sound souler").desire(MusicTheme.artist)
            ]).desire(MusicTheme.centerLayout),
            IconButton(
              onPressed: () {},
              color: Colors.grey.shade400,
              icon: const Icon(Icons.thumb_up_off_alt),
            ),
          ]) //
              .desire(MusicTheme.betweenLayout)
              .desirable(MusicTheme.detailContainer),
          // * </End> Detail Section */

          // * <Start> Slider / Timer Section */
          Slider(
            onChangeStart: (_) {
              timer.pause();
            },
            onChanged: (newTime) {
              setState(() {
                currentTime = newTime;
              });
            },
            onChangeEnd: (_) {
              if (playing) {
                timer.start();
              }
            },
            value: currentTime,
            min: 0,
            max: limit,
          ) //
              .desire([MusicTheme.slider]) //
              .desirable([fr.height(28)]),
          Row(
            children: [
              Text(formatMinute(currentTime)).desire(MusicTheme.time),
              Text(formatMinute(146)).desire(MusicTheme.time),
            ],
          ) //
              .desire(MusicTheme.betweenLayout)
              .desirable([fr.px(24), fr.pb(20)]),
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
                onPressed: handlePlay,
                icon: AnimatedIcon(
                  progress: controller.view,
                  icon: AnimatedIcons.play_pause,
                ),
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
          ..use([
            fr.px(16),
            fr.bg(MusicTheme.accent),
          ]));
  }
}
