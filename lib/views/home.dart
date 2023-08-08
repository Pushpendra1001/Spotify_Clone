// ignore_for_file: duplicate_import, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:spotify_clone/navigation/albumCard.dart';
import 'package:spotify_clone/navigation/globalCapsule.dart';
import 'package:spotify_clone/navigation/song_card.dart';
import 'package:spotify_clone/views/premium.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x202A44),
      extendBody: true,
      extendBodyBehindAppBar: true,
      // bottomNavigationBar: bottombar(),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0x111727).withOpacity(0.9),
                  Colors.black.withOpacity(1),
                ]),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          // physics: ClampingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Good Evening Pushpendra",
                        style: GoogleFonts.pacifico(fontSize: 20),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.history),
                        onPressed: () {},
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const profile_view(),
                              ));
                        },
                        icon: const Icon(Icons.settings),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              "Music",
                              style: GoogleFonts.aboreto(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(16),
                              // color: Colors.white12,
                              ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              "Podcast",
                              style: GoogleFonts.aboreto(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const albumCard(
                            radius: 55,
                            image: 'assets/images/album31.jpg',
                            label: "Coders",
                          ),
                        ),
                        const albumCard(
                          radius: 55,
                          image: 'assets/images/album18.jpg',
                          label: "Kishor Kumar",
                        ),
                        const albumCard(
                          radius: 55,
                          image: 'assets/images/album3.jpg',
                          label: "Pop Shot",
                        ),
                        const albumCard(
                          radius: 55,
                          image: 'assets/images/album5.jpeg',
                          label: "Workout",
                        ),
                        const albumCard(
                          radius: 55,
                          image: 'assets/images/album4.jpg',
                          label: "For Power",
                        ),
                        const albumCard(
                          radius: 55.0,
                          image: 'assets/images/album6.jpg',
                          label: "Alone",
                        ),
                        const albumCard(
                          radius: 55.0,
                          image: 'assets/images/album7.jpg',
                          label: "Homework",
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Global 100",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          GlobalCapsule(
                            image: 'assets/images/album13.jpeg',
                            label: "Top 50",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GlobalCapsule(
                            image: 'assets/images/album14.jpeg',
                            label: "Global 100",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          GlobalCapsule(
                            image: 'assets/images/album1.jpg',
                            label: "Motivation",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GlobalCapsule(
                            image: 'assets/images/album3.jpg',
                            label: "Coding",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          GlobalCapsule(
                            image: 'assets/images/album7.jpg',
                            label: "Hindi Top",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GlobalCapsule(
                            image: 'assets/images/album8.jpeg',
                            label: "Love",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Best For Today",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            song_card(
                                index: 8,
                                image: "assets/images/album16.jpeg",
                                label: "Yalgaar"),
                            song_card(
                                index: 1,
                                image: "assets/images/album19.jpg",
                                label: "kishor kumar"),
                            song_card(
                                index: 9,
                                image: "assets/images/album17.jpg",
                                label: "OneRepublic.mp3"),
                            song_card(
                                index: 10,
                                image: "assets/images/album20.jpg",
                                label: "Aathma_Raama"),
                            song_card(
                                index: 3,
                                image: "assets/images/album12.jpg",
                                label: "Boney"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            song_card(
                                index: 8,
                                image: "assets/images/album51.jpg",
                                label: "Gaming"),
                            song_card(
                                index: 1,
                                image: "assets/images/album33.jpg",
                                label: "Error 001"),
                            song_card(
                                index: 9,
                                image: "assets/images/album32.png",
                                label: "OneRepublic"),
                            song_card(
                                index: 10,
                                image: "assets/images/album34.webp",
                                label: "Coding"),
                            song_card(
                                index: 3,
                                image: "assets/images/album31.jpg",
                                label: "Midnight"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Your Top Mixes",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            albumCard(
                                radius: 100,
                                image: "assets/images/honeysingh.jpg",
                                label: "Honey Singh"),
                            albumCard(
                                radius: 100,
                                image: "assets/images/Badshah.jpg",
                                label: "Badsha"),
                            albumCard(
                                radius: 100,
                                image: "assets/images/album11.webp",
                                label: "Michal Jackson"),
                            albumCard(
                                radius: 100,
                                image: "assets/images/album7.jpg",
                                label: "SRK Best"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
