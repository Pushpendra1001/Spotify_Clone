import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: Center(
        child: Text("Search page"),
      ),
    );
  }
}
