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
      "btn-text-red": ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
      ),
      "btn-elevation-10": ButtonStyle(
        elevation: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return 4;
          }

          return 1;
        }),
      ),
      "tf-a": const TextField(
        readOnly: true,
      ),
      "px-2": const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
      "px-4": const TextField(
        decoration: InputDecoration(
          labelText: "Hi",
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
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
          const Text("Desire")
              .desire("font-medium text-xl text-blue-400 text-center"),
          const SelectableText("Selectable Desire")
              .desire("font-medium text-xl"),
          ElevatedButton.icon(
            icon: const Icon(Icons.ac_unit),
            onPressed: () {},
            label: const Text("Hi"),
          ).desire("text-blue-400"),
          const TextField(
            decoration: InputDecoration(hintText: "Hello"),
          ).desire("px-2 text-blue-400"),
        ],
      ).desire("justify-center items-center"),
    );
  }
}
