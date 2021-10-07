import 'package:flutter/material.dart';

import 'package:desire/desire.dart';

void main() {
  runApp(DesireProvider(
    child: MyApp(),
    desires: {
      "font-medium": const TextStyle(fontWeight: FontWeight.w500),
      "text-xl": const TextStyle(fontSize: 28),
      "text-blue": const TextStyle(color: Colors.blue),
      "text-center": const Text("", textAlign: TextAlign.center),
      "justify-center": Row(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      "items-center": Row(
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
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
      ).desire("justify-center items-center"),
    );
  }
}
