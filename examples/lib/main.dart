import 'package:flutter/material.dart';

import 'package:desire/desire.dart';

class De {
  static const textRed400 = TextStyle(color: Colors.red);

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
          const Text(
            "Desire",
          ).desire([De.textRed400, De.xl(60)]),
          TextButton(
            child: const Text("Hello"),
            onPressed: () {},
          ).desire([
            DeBtn.bg(Colors.blue.withOpacity(0.5)),
            DeBtn.color(Colors.white),
          ]),
          Image.network(
            "https://avatars.githubusercontent.com/u/35027979?s=400&u=9aaed6eefa4847aca63189846d2bc994b0608255&v=4",
          ).desirable()
            ..use([
              De.rounded(8),
              // De.p(20),
            ])
        ],
      ).desire([De.center]),
    );
  }
}
