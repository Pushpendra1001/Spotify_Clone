// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:spotify_clone/navigation/song_item.dart';

class album extends StatelessWidget {
  final String cover_name;
  final String cover_image;

  Widget song_list() {
    if (cover_name == "Coders") {
      return Column(
        children: [
          song_item(
            image_name: 'assets/images/album21.webp',
            song_name: 'Bheegi Bheegi Raaton Mein ',
            singer_name: 'akshay Kumar',
          ),
          song_item(
            image_name: 'assets/images/album22.webp',
            song_name: ' Tere Bina Zindagi Se',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album23.webp',
            song_name: 'Humein Tumse Pyar Kitna',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album24.webp',
            song_name: 'O Mere Dil Ke Chain',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album25.webp',
            song_name: 'Athma rama',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album19.jpg',
            song_name: 'Dekha Ek Khwaab',
            singer_name: 'Kishor Kumar',
          ),
        ],
      );
    } else {
      return Column(
        children: [
          song_item(
            image_name: 'assets/images/album21.webp',
            song_name: 'rato Mein ',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album22.webp',
            song_name: ' Tere Bina Zindagi Se',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album23.webp',
            song_name: 'Humein Tumse Pyar Kitna',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album24.webp',
            song_name: 'O Mere Dil Ke Chain',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album25.webp',
            song_name: 'Athma rama',
            singer_name: 'Kishor Kumar',
          ),
          song_item(
            image_name: 'assets/images/album19.jpg',
            song_name: 'Dekha Ek Khwaab',
            singer_name: 'Kishor Kumar',
          ),
        ],
      );
    }
  }

  const album({super.key, required this.cover_name, required this.cover_image});
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
                            image: AssetImage(cover_image),
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
                                  cover_name,
                                  style: TextStyle(
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
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
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
                                    child: Icon(
                                      Icons.play_circle_fill_sharp,
                                      size: 80,
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
