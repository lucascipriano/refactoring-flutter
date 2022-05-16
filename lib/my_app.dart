import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refactoring/components/cards_controller.dart';

import 'pages/home/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Banking app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => CardsControllerApp(),
        child: const HomeApp(),
      ),
    );
  }
}
