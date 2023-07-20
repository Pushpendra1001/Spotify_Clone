import 'package:flutter/material.dart';

// ignore: camel_case_types
class profile_view extends StatefulWidget {
  const profile_view({super.key});

  @override
  State<profile_view> createState() => _profile_viewState();
}

// ignore: camel_case_types
class _profile_viewState extends State<profile_view> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Premium Page"),
      ),
    );
  }
}
