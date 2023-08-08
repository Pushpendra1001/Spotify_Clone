// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/views/album.dart';

class albumCard extends StatelessWidget {
  // final ImageProvider image;
  final String image;
  final String label;
  final double radius;
  const albumCard(
      {super.key,
      required this.image,
      required this.label,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    album(cover_name: label, cover_image: image),
              )),
          child: Column(
            children: [
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(radius)),
                    border: Border.all(color: Colors.white70),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                label,
                // style: TextStyle(fontSize: 20),
                style: GoogleFonts.sourceSansPro(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
