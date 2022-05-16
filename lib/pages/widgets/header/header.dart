import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      margin: const EdgeInsets.only(top: 32),
      height: 68,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _welcome(),
              _profile(),
            ],
          ),
        ],
      ),
    ));
  }
}

_welcome() {
  return Padding(
    padding: const EdgeInsets.only(top: 0.0),
    child: (Column(
      children: const [
        Text(
          "Bem-vindo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          "Lucas Cipriano",
          style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
        ),
      ],
    )),
  );
}

_profile() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Icon(
            Icons.notifications,
            size: 30,
          ),
        ],
      )
    ],
  );
}
