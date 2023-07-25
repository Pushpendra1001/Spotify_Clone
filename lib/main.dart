import 'package:flutter/material.dart';

import 'package:spotify_clone/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(66, 235, 0, 0),
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white10,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(fontSize: 12),
              unselectedItemColor: Colors.white38,
              selectedItemColor: Colors.white),
          useMaterial3: true,
        ),
        home: const Scaffold(
          body: HomeView(),
        ));
  }
}
