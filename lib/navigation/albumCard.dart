// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';

class albumCard extends StatelessWidget {
  // final ImageProvider image;
  final String image;
  final String label;
  const albumCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
