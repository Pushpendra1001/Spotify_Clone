// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  bool audio_state = true;
  bool favourite_state = true;

  @override
  Widget build(BuildContext context) {
    // audioPlayer.setSourceUrl(soundFilePath);

// function start

    miniplayer() {
      return AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 137, 31, 23),
        ),
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
                  Text("Dekha ek Khwab Jo ..."),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      audio_state = !audio_state;
                    });
                  },
                  child: Icon(
                    audio_state == false ? Icons.pause : Icons.play_arrow,
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              // color: Colors.transparent,
              borderRadius: BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
              ])),
          child: BottomNavigationBar(
            elevation: 0,
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
            ],
          ),
        ),
      ],
    );
  }
}
