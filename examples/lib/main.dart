import 'package:flutter/material.dart';

import 'package:desire/desire.dart';
import 'package:flutter/rendering.dart';

import 'package:desire/floret/floret.dart';

class De {
  static color(Color color) => TextStyle(color: color);

  static TextStyle xl(double size) => TextStyle(fontSize: size);
  static Column center = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
  );

  static rounded([double radius = 8]) => (child) => ClipRRect(
        child: child,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      );

  static p([double padding = 20]) => (child) => Padding(
        child: child,
        padding: EdgeInsets.all(padding),
      );

  static Container bg(Color color) => Container(
        decoration: BoxDecoration(
          color: color,
        ),
      );

  static BoxConstraints size() =>
      const BoxConstraints.tightFor(width: 100, height: 100);
}

class DeIn {
  static Slider color(Color color) => Slider(
        value: 0,
        onChanged: (_) {},
        thumbColor: color,
        activeColor: color,
        inactiveColor: color.withOpacity(.25),
      );

  static AlertDialog titleColor(Color color) => AlertDialog(
        titleTextStyle: De.color(color),
      );
}

class DeBtn {
  static ButtonStyle bg(Color color) => ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      );

  static ButtonStyle color(Color color) => ButtonStyle(
        foregroundColor: MaterialStateProperty.all(color),
      );
}

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Floret").desire([
            frt.h2(context),
            frt.w200,
            frt.center,
          ]).desirable()
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
          ).desire(
            [
              frid.floatingLabelStyle(
                const TextStyle().desire([
                  frt.fontSize(16),
                  frt.bold,
                ]),
              ),
              frid.border(const OutlineInputBorder())
            ],
          ).desirable()
            ..use([
              fr.p(20),
            ]),
          ElevatedButton(
            child: const Text("Hello"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const AlertDialog(
                  title: Text("Hello World"),
                  content: Text("Lorem Ipsum Dolar"),
                ).desire([DeIn.titleColor(Colors.red)]),
              );
            },
          ).desire([
            frb.bg(all: Colors.blue),
            frb.elevation(base: 2, pressed: 10),
            frb.size(all: const Size(120, 60)),
            frt.color(Colors.white),
            frt.size(18),
            frt.bold
          ]),
        ],
      ).desire([
        frr.mainCenter,
      ]),
    );
  }
}
