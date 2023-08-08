// ignore_for_file: duplicate_import, unused_import, non_constant_identifier_names, duplicate_ignore, camel_case_types

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spotify_clone/views/album.dart';
import 'package:spotify_clone/views/home.dart';
import 'package:spotify_clone/views/search.dart';

// ignore: camel_case_types
class song extends StatefulWidget {
  final String image;

  // ignore: non_constant_identifier_names
  final String song_name;

  // ignore: non_constant_identifier_names
  final int song_index;

  const song(
      {super.key,
      required this.image,
      // ignore: non_constant_identifier_names
      required this.song_name,
      required this.song_index});

  @override
  State<song> createState() => songState();
}

double slider_value = 0.0;

class songState extends State<song> {
  late AudioPlayer _player;
  late AudioCache cache;
  bool PlayerState = false;
  bool favouriteState = false;
  double max_slider_value = 0.0;
  String curr = '';
  int i = 0;

  String getCurrent(songName) {
    setState(() {
      curr = songName + '.mp3';
    });
    return curr;
  }

  List musicList = [
    {
      'song_name': 'Tu Tu hai wahi dil nai',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album1.jpg',
      'song_url': 'Tu_Tu_hai_wahi_dil_ne.mp3'
    },
    {
      'song_name': 'Neele Neele Ambar',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album5.jpeg',
      'song_url': 'Neele_Neele_Ambar.mp3'
    },
    {
      'song_name': 'Chura Liya hai tumnai ',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album21.webp',
      'song_url': 'Chura_liya_hai_tumnai.mp3'
    },
    {
      'song_name': 'Tere Bina Zindagi Se',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album22.webp',
      'song_url': 'Tere_Bina_Zindagi_Se.mp3'
    },
    {
      'song_name': 'Humein Tumse Pyar Kitna',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album23.webp',
      'song_url': 'Humen_Tumse_Pyar.mp3'
    },
    {
      'song_name': 'O Mere Dil Ke Chain',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album24.webp',
      'song_url': 'O_Mere_Dil_Chain.mp3'
    },
    {
      'song_name': 'Dekha Ek Khwaab',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album24.webp',
      'song_url': 'Dekha_Ek_Khwab.mp3'
    },
    {
      'song_name': 'Bheegi Bheegi Raaton Mein',
      'singer_name': 'Kishor Kumar',
      'image_name': 'assets/images/album24.webp',
      'song_url': 'Bheegi_Bheegi_Raaton_Mein.mp3'
    },
    {
      'song_name': 'Yalgaar',
      'singer_name': 'Ajay Nagar',
      'image_name': 'assets/images/album16.webp',
      'song_url': 'Yalgaar.mp3'
    },
    {
      'song_name': 'Aasman ko chuu kr dekha',
      'singer_name': 'Xyx',
      'image_name': 'assets/images/album17.jpg',
      'song_url': 'Aasman_ko_chuu_kr_dekha.mp3'
    },
    {
      'song_name': 'Aasman ko chuu kr dekha',
      'singer_name': 'Xyx',
      'image_name': 'assets/images/album20.jpg',
      'song_url': 'Aathma_Raama.mp3'
    },
  ];

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.onDurationChanged.listen((Duration duration) {
      setState(() {
        // Update the slider's maximum value when the duration is available
        slider_value = 0.0;
        // max_slider_value = duration.inMilliseconds.toDouble();
        max_slider_value = duration.inMilliseconds.toDouble();
      });
    });

    _player.onPositionChanged.listen((Duration position) {
      setState(() {
        // Update the slider value as the music plays
        slider_value = position.inMilliseconds.toDouble();
      });
    });
  }

  void seekToPosition(double milliseconds) {
    Duration newPosition = Duration(milliseconds: milliseconds.round());
    _player.seek(newPosition);
    setState(() {
      slider_value = milliseconds;
    });
  }

  String timer(double sliderValue) {
    var seconds = (sliderValue / 1000).truncate();
    var minutes = (seconds / 60).truncate();
    // var hour = (minutes / 60).truncate();

    var updatedTime = '';
    updatedTime += '${(minutes % 60).toString()}:';
    updatedTime += (seconds % 60).toString();
    // updated_time = '${hour}:' + '${minutes}:' + '${seconds}';

    return updatedTime;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Color.fromARGB(255, 142, 26, 18),
          backgroundColor: Colors.white38,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_downward),
                        onPressed: () {
                          Navigator.pop(context);
                          _player.pause();
                          max_slider_value = 0.0;
                          slider_value = 0.0;
                        },
                      ),
                      const Text(
                        "Hii Buddy..",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image(
                    height: 350,
                    width: 350,
                    image: AssetImage(
                      widget.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.song_name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("The beatless"),
                              ],
                            ),
                            IconButton(
                              iconSize: 30,
                              onPressed: () {
                                setState(() {
                                  favouriteState = !favouriteState;
                                });
                              },
                              icon: Icon(favouriteState == false
                                  ? Icons.favorite_outline
                                  : Icons.favorite),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Slider(
                        min: 0,
                        max: slider_value,
                        inactiveColor: Colors.white38,
                        activeColor: Colors.white,
                        value: slider_value,
                        onChanged: (double value) {
                          setState(() {
                            seekToPosition(value);
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(timer(slider_value)),
                            const Text("5:34"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.shuffle),
                          const Icon(
                            Icons.skip_previous_outlined,
                            size: 40,
                          ),
                          IconButton(
                              iconSize: 80,
                              onPressed: () {
                                setState(() {
                                  PlayerState = !PlayerState;
                                });
                                // getCurrent('$widget.song_name');
                                if (PlayerState == true) {
                                  _player.play(AssetSource(
                                      getCurrent(widget.song_name)));

                                  //       // AssetSource('Neele_Neele_Ambar.mp3'),
                                  //       );
                                }
                                {
                                  _player.pause();
                                }
                              },
                              icon: PlayerState == false
                                  ? const Icon(Icons.play_circle)
                                  : const Icon(Icons.pause_circle)),
                          IconButton(
                              iconSize: 40,
                              icon: const Icon(Icons.skip_next_outlined),
                              onPressed: () {
                                setState(
                                  () {
                                    i = i++;
                                  },
                                );

                                song(
                                    song_index: i,
                                    image: musicList[i]['image_name'],
                                    song_name: musicList[i]['song_name']);
                              }),
                          const Icon(Icons.repeat),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.bluetooth,
                            size: 30,
                            color: Colors.green,
                          ),
                          Text(
                            "Oppo Encho Buds",
                            style: TextStyle(color: Colors.green),
                          ),
                          Spacer(),
                          Icon(
                            Icons.playlist_play,
                            size: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Lyrics",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Icon(Icons.share),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(Icons.copy)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
