// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_local_variable, unnecessary_this

import 'package:spotify_clone/views/home.dart';
import 'package:spotify_clone/views/library.dart';
import 'package:spotify_clone/views/premium.dart';
import 'package:spotify_clone/views/search.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  bool audio_state = true;
  bool favourite_state = true;
  Color playingColor = Colors.teal;
  late AudioCache cache;
  int _selected_state = 0;
  List<Widget> Pages = [
    const HomeView(),
    const search_view(),
    const library_view(),
    const profile_view(),
    // const album(),
    // const song(),
  ];

  @override
  void initState() {
    super.initState();
    int slider_value = 0;
    // void dispose() {
    //   _player.stop(); // Stop the audio player.
    //   _player.dispose(); // Dispose the audio player to release resources.
    //   super.dispose();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
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
            renderView(2, const library_view()),
            renderView(3, const profile_view()),
            // renderView(4, const album()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    // child: miniplayer(),
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

// function close
}
