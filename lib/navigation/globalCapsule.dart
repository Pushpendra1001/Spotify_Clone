// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class GlobalCapsule extends StatelessWidget {
  final String image, label;
  const GlobalCapsule({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 150,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              height: 60,
              width: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}
