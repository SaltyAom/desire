import 'package:flutter/material.dart';

import 'package:desire/desire.dart';

void main() {
  runApp(DesireProvider(
    child: const MyApp(),
    desires: {
      "font-medium": const TextStyle(fontWeight: FontWeight.w500),
      "text-xl": const TextStyle(fontSize: 28),
      "text-blue-400": TextStyle(color: Colors.blue.shade400),
      "text-center": const Text("", textAlign: TextAlign.center),
      "justify-center": Row(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      "items-center": Row(
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      "btn-bg-blue": TextButton(
        child: const SizedBox.shrink(),
        onPressed: null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.blue.shade400,
          ),
        ),
      ),
      "btn-text-white": ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      "btn-elevation-10": ButtonStyle(
        elevation: MaterialStateProperty.all<double>(10),
      ),
      "tf-a": const TextField(
        readOnly: true,
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
          ).desire("font-medium text-xl text-blue-400 text-center"),
          const SelectableText("Selectable Desire")
              .desire("font-medium text-xl text-blue-400"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Hello World"),
          ).desire("btn-text-white btn-bg-blue btn-elevation-10"),
          const TextField()
        ],
      ).desire("justify-center items-center"),
    );
  }
}
