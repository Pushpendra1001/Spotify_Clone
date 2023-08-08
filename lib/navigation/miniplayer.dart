// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class miniplayer extends StatefulWidget {
  const miniplayer({super.key});

  @override
  State<miniplayer> createState() => _miniplayerState();
}

class _miniplayerState extends State<miniplayer> {
  bool favourite_state = true;
  Color playingColor = Colors.teal;

  // late AudioCache cache;
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  String currentSong = "";

  void playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      audioPlayer.pause();
      audioPlayer.play(AssetSource(url));
      currentSong = url;
    } else if (!isPlaying) {
      audioPlayer.play(AssetSource(url));

      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              // color: Colors.transparent,
              borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: miniplayer_player(),
          ),
        ),
      ],
    );
  }

  miniplayer_player() {
    return AnimatedContainer(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: playingColor),
      duration: const Duration(milliseconds: 500),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset('assets/images/album16.jpeg'),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Yalgaar"),
                Text(
                  "Ajay Nagar",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.bluetooth_connected),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    favourite_state = !favourite_state;
                  });
                },
                child: Icon(
                  favourite_state == false
                      ? Icons.favorite_outline
                      : Icons.favorite,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: IconButton(
                onPressed: () {
                  playMusic('assets/yalgaar.mp3');
                },
                icon: Icon(
                  isPlaying == false ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
