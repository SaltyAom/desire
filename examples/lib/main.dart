import 'package:flutter/material.dart';

import 'package:desire/desire.dart';

void main() {
  runApp(const DesireProvider(
    child: MyApp(),
    desires: {
      "font-medium": TextStyle(fontWeight: FontWeight.w500),
      "text-xl": TextStyle(fontSize: 28),
      "text-blue": TextStyle(color: Colors.blue),
      "text-center": Text("", textAlign: TextAlign.center)
    },
  ));
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Desire",
            style: TextStyle(
              color: Colors.red,
            ),
          ).desire("font-medium text-xl text-blue text-center"),
          const SelectableText("Selectable Desire")
              .desire("font-medium text-xl text-blue"),
        ],
      ),
    );
  }
}
