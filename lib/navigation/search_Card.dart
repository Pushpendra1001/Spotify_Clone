// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class search_card extends StatelessWidget {
  final card_color;
  final card_color2;
  final card_name1;
  final card_name2;

  const search_card(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.card_color,
      // ignore: non_constant_identifier_names
      required this.card_color2,
      // ignore: non_constant_identifier_names
      required this.card_name1,
      // ignore: non_constant_identifier_names
      required this.card_name2});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: card_color,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 100,
              child: Center(
                  child: Text(
                card_name1,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              )),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: card_color2,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 100,
              child: Center(
                  child: Text(
                card_name2,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
