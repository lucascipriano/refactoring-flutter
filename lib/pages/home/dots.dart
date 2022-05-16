import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  final int currentIndex;
  getColor(int index) {
    if (index == currentIndex) {
      return Colors.white;
    }
    if (index != currentIndex) {
      return Colors.grey;
    }
  }

  const Dots({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: getColor(0),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: getColor(1),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: getColor(2),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
