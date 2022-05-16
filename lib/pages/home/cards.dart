// ignore_for_file: unused_element
import 'package:flutter/material.dart';
import 'package:refactoring/components/cards_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dots.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: PageView(
              onPageChanged: (index) {
                Provider.of<CardsControllerApp>(
                  context,
                  listen: false,
                ).setPageIndex(index);
                setState(() {
                  _currentIndex = index;
                });
              },
              children: <Widget>[
                _totalcards(Colors.grey),
                _totalcards(Colors.pink),
                _totalcards(Colors.amber),
              ],
            ),
          ),
          Dots(
            currentIndex: _currentIndex,
          ),
        ],
      ),
    );
  }
}

_totalcards(colorsHere) {
  const String visaLogo = 'assets/visaLogo.svg';
  final Widget svgVisaLogo = SvgPicture.asset(
    visaLogo,
  );

  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: [
        BoxShadow(
          color: colorsHere,
          // blurRadius: 12,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // Text(
                  //   "Seu saldo",
                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  // ),
                  // Text(
                  //   "R\$ 14,358.44",
                  //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  // )
                ],
              ),
            ),
            const Text("4556 **** 2052 **13",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 19.0),
          child: svgVisaLogo,
        ),
      ],
    ),
  );
}

_mycads() {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 10),
            blurRadius: 12,
          ),
        ],
      ),
      child: const Text("Aqui"));
}
