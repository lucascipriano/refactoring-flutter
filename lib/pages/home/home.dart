// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:refactoring/pages/home/cards.dart';
import 'package:refactoring/pages/home/options.dart';
import 'package:refactoring/pages/widgets/header/header.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Header(),
              const Cards(),
              const Optins(),
            ],
          ),
        ),
      ),
    );
  }
}
