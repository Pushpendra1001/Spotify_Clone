import 'package:flutter/material.dart';

// ignore: camel_case_types
class library_view extends StatefulWidget {
  const library_view({super.key});

  @override
  State<library_view> createState() => _library_viewState();
}

// ignore: camel_case_types
class _library_viewState extends State<library_view> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Library page"),
      ),
    );
  }
}
