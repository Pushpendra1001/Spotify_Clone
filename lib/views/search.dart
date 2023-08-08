import 'package:flutter/material.dart';
import 'package:spotify_clone/navigation/search_Card.dart';

// ignore: camel_case_types
class search_view extends StatefulWidget {
  const search_view({super.key});

  @override
  State<search_view> createState() => _search_viewState();
}

// ignore: camel_case_types
class _search_viewState extends State<search_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 24),
                  ),
                  Icon(
                    Icons.camera_alt,
                    size: 32,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    label: const Text(
                      "What do you want to listen to ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Your Favourite",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  search_card(
                    card_color: Colors.purple,
                    card_color2: Colors.red,
                    card_name1: "Made for You",
                    card_name2: "Workout",
                  ),
                  search_card(
                    card_color: Colors.green,
                    card_color2: Colors.orange,
                    card_name1: "Hindi",
                    card_name2: "Punjabi",
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Popular Podcast",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  search_card(
                    card_color: Colors.pink,
                    card_color2: Colors.yellow,
                    card_name1: "Comedy",
                    card_name2: "News and Political",
                  ),
                  search_card(
                    card_color: Colors.yellow,
                    card_color2: Colors.grey,
                    card_name1: "Books",
                    card_name2: "Self Help",
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Browse All",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  search_card(
                    card_color: Colors.red,
                    card_color2: Colors.pink,
                    card_name1: "Party",
                    card_name2: "Decades",
                  ),
                  search_card(
                    card_color: Colors.green,
                    card_color2: Colors.orange,
                    card_name1: "Gaming",
                    card_name2: "90's",
                  ),
                  search_card(
                    card_color: Colors.cyanAccent,
                    card_color2: Colors.grey,
                    card_name1: "Charts",
                    card_name2: "Pop",
                  ),
                  search_card(
                    card_color: Colors.purple,
                    card_color2: Colors.orange,
                    card_name1: "Hip-Hop",
                    card_name2: "Devotional",
                  ),
                  search_card(
                    card_color: Colors.yellow,
                    card_color2: Colors.red,
                    card_name1: "Mood",
                    card_name2: "Radio",
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
