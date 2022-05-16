import 'package:flutter/material.dart';

class Optins extends StatelessWidget {
  const Optins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _componet(
            Colors.white,
            "alo",
          ),
          _componet(
            Colors.white,
            "você",
          ),
          _componet(
            Colors.white,
            "option",
          ),
          _componet(
            Colors.white,
            "option 1",
          ),
          _componet(
            Colors.white,
            "option 2",
          ),
        ],
      ),
    );
  }
}

_componet(colorHere, subtitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colorHere,
        ),
        // margin: EdgeInsets.only(right: 10),
        height: 60,
        width: 60,
      ),
      Text(subtitle)
    ],
  );
}
