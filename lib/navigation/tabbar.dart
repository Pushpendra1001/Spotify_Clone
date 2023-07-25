// ignore_for_file: non_constant_identifier_names, unnecessary_this

import 'package:flutter/material.dart';
import 'package:spotify_clone/views/home.dart';
import 'package:spotify_clone/views/library.dart';
import 'package:spotify_clone/views/profile.dart';
import 'package:spotify_clone/views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => TabbarState();
}

class TabbarState extends State<Tabbar> {
  int _selected_state = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(0.3),
          currentIndex: _selected_state,
          onTap: (index) {
            setState(() {
              this._selected_state = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: "Your Library",
            ),
            BottomNavigationBarItem(
              // Image.asset('assets/images/sportify.png'),
              icon: ImageIcon(
                AssetImage('assets/images/spotify.png'),
              ),
              label: "Premium",
            ),
          ]),
      body: Stack(
        children: [
          renderView(0, const HomeView()),
          renderView(1, const search_view()),
          renderView(2, const library_view()),
          renderView(3, const profile_view())
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selected_state != tabIndex,
      child: Opacity(
        opacity: _selected_state == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
