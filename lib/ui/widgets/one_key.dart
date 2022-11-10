import 'package:flutter/material.dart';

class OneKey extends StatelessWidget {
  const OneKey({Key? key, required this.number, required this.callback})
      : super(key: key);

  final int number;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: MaterialButton(
          key: Key(number.toString()),
          color: Colors.amberAccent,
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          onPressed: () {
            callback(number);
          },
          child: Text(number.toString(),
              style: const TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ))),
    );
  }
}