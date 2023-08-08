// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:spotify_clone/navigation/song_item.dart';
import 'package:audioplayers/audioplayers.dart';

class album extends StatefulWidget {
  final String cover_name;
  final String cover_image;
  final audio_state = false;

  const album({super.key, required this.cover_name, required this.cover_image});

  @override
  State<album> createState() => _albumState();
}

class _albumState extends State<album> {
  times() {
    for (var i = 1; i < musicList.length;) {
      return song_item(
        image_name: musicList[i]['image_name'],
        song_name: musicList[i]['song_name'],
        singer_name: musicList[i]['singer_name'],
      );
    }
  }

  // late AudioPlayer _player;

  // @override
  // void initState() {
  //    //   _player = audioPlayer;
  // }

  List musicList = [
    {
      'song_name': 'Tu Tu hai wahi din nai',
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
    }
  ];

  AudioPlayer audioPlayer = AudioPlayer();

  bool isPlaying = false;

  String currentSong = "";

  void playMusic(String url) async {
    // if (isPlaying == true) {
    //   audioPlayer.pause();
    //   audioPlayer.play(AssetSource(url));
    //   currentSong = url;
    // } else if (!isPlaying == false) {
    //   setState(
    //     () {
    //       isPlaying = true;
    //     },
    //   );
    //   audioPlayer.play(AssetSource(url));
    // }
    audioPlayer.play(AssetSource(url));
  }

  Widget song_list() {
    return Column(
      children: [
        for (var i = 0; i < musicList.length; i++)
          InkWell(
            onTap: () {
              // playMusic(musicList[i]['song_url']);
              audioPlayer.play(AssetSource(musicList[i]['song_url']));
            },
            child: song_item(
              image_name: musicList[i]['image_name'],
              song_name: musicList[i]['song_name'],
              singer_name: musicList[i]['singer_name'],
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      extendBodyBehindAppBar: true,
      // bottomNavigationBar: const bottombar(),
      // bottomNavigationBar: tabbar(),
      body: Stack(
        children: [
          Container(
            height: 630,
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.12),
                            Colors.black.withOpacity(0.33),
                            Colors.black.withOpacity(0.44),
                            Colors.black.withOpacity(0.55),
                            Colors.black.withOpacity(0.66),
                            Colors.black.withOpacity(0.77),
                            Colors.black.withOpacity(0.88),
                            Colors.black.withOpacity(0.97),
                            Colors.black.withOpacity(1),
                          ]),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                          ),
                          child: Image(
                            image: AssetImage(widget.cover_image),
                            width: MediaQuery.of(context).size.width - 150,
                            height: MediaQuery.of(context).size.width - 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  widget.cover_name,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/spotify.png',
                                    cacheWidth: 30,
                                    color: Colors.green,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Spotify",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 4),
                                        child: Text("1,623,233 Likes . 6h 48m"),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.favorite_outline),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.download),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Icon(Icons.more_horiz)
                                        ],
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    child: IconButton(
                                      icon: const Icon(
                                          Icons.play_circle_fill_sharp),
                                      onPressed: () {
                                        if (widget.audio_state == true) {
                                          audioPlayer.pause();
                                        } else {}
                                      },
                                      iconSize: 60,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(color: Colors.black, child: song_list())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
