// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:spotify_clone/views/album.dart';
import 'package:spotify_clone/views/home.dart';
import 'package:spotify_clone/views/library.dart';
import 'package:spotify_clone/views/profile.dart';
import 'package:spotify_clone/views/search.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spotify_clone/views/song.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  bool audio_state = true;
  bool favourite_state = true;
  Color playingColor = Colors.teal;
  late AudioPlayer _player;
  late AudioCache cache;
  int _selected_state = 0;
  List<Widget> Pages = [
    const HomeView(),
    const search_view(),
    const library_view(),
    const profile_view(),
    // const album(),
    const song(),
  ];

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedItemColor: Colors.white38,
          selectedItemColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            renderView(0, const HomeView()),
            renderView(1, const search_view()),
            // renderView(2, const album()),
            renderView(3, const profile_view()),
            // renderView(4, const album()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.transparent,
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    child: miniplayer(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.70),
                        Colors.black.withOpacity(0.95),
                        Colors.black.withOpacity(1)
                      ],
                    ),
                  ),
                  child: BottomNavigationBar(
                    currentIndex: _selected_state,
                    onTap: (index) {
                      setState(() {
                        this._selected_state = index;
                      });
                    },
                    elevation: 0,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                        backgroundColor: Colors.black,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: "Search",
                        backgroundColor: Colors.black,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.library_music),
                        label: "Your Library",
                        backgroundColor: Colors.black,
                      ),
                      BottomNavigationBarItem(
                        // Image.asset('assets/images/sportify.png'),

                        icon: ImageIcon(
                          AssetImage('assets/images/spotify.png'),
                        ),
                        label: "Premium",
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget renderView(int pages, Widget view) {
    return IgnorePointer(
      ignoring: _selected_state != pages,
      child: Opacity(
        opacity: _selected_state == pages ? 1 : 0,
        child: view,
      ),
    );
  }

  Widget shifting(Widget view, PageNo) {
    return IgnorePointer(
      ignoring: _selected_state != PageNo,
      child: Opacity(
        opacity: _selected_state == PageNo ? 1 : 0,
        child: view,
      ),
    );
  }
  // audioPlayer.setSourceUrl(soundFilePath);

// function start

  miniplayer() {
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
            Image.asset('assets/images/album18.jpg'),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dekha ek khwab Jo ..."),
                Text(
                  "Kishor Kumar",
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
                  setState(() {
                    audio_state = !audio_state;
                    if (audio_state == false) {
                      playingColor = const Color.fromARGB(255, 180, 38, 28);
                    } else {
                      playingColor = const Color.fromARGB(255, 117, 23, 17);
                    }
                  });

                  if (audio_state == false) {
                    _player.play(
                      AssetSource('code.mp3'),
                    );
                  } else {
                    _player.pause();
                  }
                },
                icon: Icon(
                  audio_state == false ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
            // SizedBox(
            //   width: 10,
            // ),
          ],
        ),
      ),
    );
  }
// function close
}
