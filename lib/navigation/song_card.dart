// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/views/song_view.dart';

class song_card extends StatelessWidget {
  // final ImageProvider image;
  final String image;
  final String label;
  final int index;

  const song_card(
      {super.key,
      required this.image,
      required this.label,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    song(image: image, song_name: label, song_index: index),
              )),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(label,
                  style: GoogleFonts.sansita(fontSize: 18, letterSpacing: 1.5)),
            ],
          ),
        ),
      ),
    );
  }
}
