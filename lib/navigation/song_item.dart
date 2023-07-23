import 'package:flutter/material.dart';

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
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(song_name),
              Text(singer_name),
            ],
          ),
          Spacer(),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
