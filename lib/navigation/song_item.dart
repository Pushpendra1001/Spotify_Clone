import 'package:flutter/material.dart';
// song item page

// ignore_for_file: camel_case_types, non_constant_identifier_names

class song_item extends StatelessWidget {
  final String image_name, song_name, singer_name;
  const song_item(
      {super.key,
      required this.image_name,
      required this.singer_name,
      required this.song_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image_name,
            cacheHeight: 70,
            cacheWidth: 70,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(song_name),
              Text(singer_name),
            ],
          ),
          const Spacer(),
          // IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow)),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
