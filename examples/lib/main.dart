import 'package:flutter/material.dart';

import 'package:desire/desire.dart';
import 'package:flutter/rendering.dart';

import 'package:desire/floret/floret.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class MyClass {
  static final button = [
    frb.bg(all: Colors.blue),
    frb.elevation(base: 2, pressed: 10),
    frb.size(all: const Size(120, 48)),
    frt.color(Colors.white),
    frt.size(21),
    frt.bold
  ];
  static title(context) => [
        frt.h2(context),
        frt.w200,
        frt.center,
      ];
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Floret")
              .desire(
                MyClass.title(context),
              )
              .desirable()
            ..use([
              fr.p(20),
            ]),
          TextButton(
            child: const Text("Hello"),
            onPressed: () {},
          ).desire([
            frb.fg(base: Colors.red, pressed: Colors.blue),
          ]),
          const TextField(
            decoration: InputDecoration(labelText: "Hi"),
          ).desire([
            frid.floatingLabelStyle(
              const TextStyle().desire([
                frt.fontSize(16),
                frt.bold,
              ]),
            ),
            frid.border(const OutlineInputBorder())
          ]).desirable()
            ..use([
              fr.p(20),
            ]),
          Slider(
            value: 0,
            min: 0,
            max: 100,
            onChanged: (_) {},
          ).desire([
            frsl.autoColor(Colors.red),
          ]),
          ElevatedButton(
            child: const Text("Hello"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const AlertDialog(
                  title: Text("Hello World"),
                  content: Text("Lorem Ipsum Dolar"),
                ),
              );
            },
          ).desire(MyClass.button),
        ],
      ).desire([
        frr.mainCenter,
      ]),
    );
  }
}
