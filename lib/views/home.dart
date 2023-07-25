import 'package:flutter/material.dart';
import 'package:spotify_clone/navigation/albumCard.dart';
import 'package:spotify_clone/navigation/bottombar.dart';
import 'package:spotify_clone/navigation/globalCapsule.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      // bottomNavigationBar: bottombar(),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            color: Color(0xFf1C7A74),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                ])),
            child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Good Evening Pushpendra",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.history),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.settings),
                        )
                      ],
                    ),
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text("Music"),
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text("Podcast"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          albumCard(
                            image: 'assets/images/album18.jpg',
                            label: "Kishor Kumar",
                          ),
                          albumCard(
                            image: 'assets/images/album20.jpg',
                            label: "Athma Ramma",
                          ),
                          albumCard(
                            image: 'assets/images/album3.jpg',
                            label: "agoraphobic",
                          ),
                          albumCard(
                            image: 'assets/images/album5.jpeg',
                            label: "Galxy",
                          ),
                          albumCard(
                            image: 'assets/images/album4.jpg',
                            label: "Cixgo",
                          ),
                          albumCard(
                            image: 'assets/images/album6.jpg',
                            label: "Jaan Ban gaye",
                          ),
                          albumCard(
                            image: 'assets/images/album7.jpg',
                            label: "Chhand Taare",
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
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
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Best For Today",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              albumCard(
                                  image: "assets/images/album16.jpeg",
                                  label: "Yalgaar"),
                              albumCard(
                                  image: "assets/images/album19.jpg",
                                  label: "Neele Neele Ambar"),
                              albumCard(
                                  image: "assets/images/album17.jpg",
                                  label: "Ass maa ko chukai"),
                              albumCard(
                                  image: "assets/images/album20.jpg",
                                  label: "Aathma Raama"),
                              albumCard(
                                  image: "assets/images/album12.jpg",
                                  label: "Dangerous"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Your Top Mixes",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              albumCard(
                                  image: "assets/images/album11.webp",
                                  label: "Michal 20"),
                              albumCard(
                                  image: "assets/images/album12.jpg",
                                  label: "Jackson Splash"),
                              albumCard(
                                  image: "assets/images/album7.jpg",
                                  label: "SRK Best"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
