// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, size) {
        return Column(children: [
          const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              suffixIcon: Icon(
                Icons.search,
              ),
            ),
          ),
        ]);
      }),
    );
  }
}
