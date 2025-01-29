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
          Container(
            width: size.maxWidth,
            height: size.maxHeight * 0.08,
            padding: const EdgeInsets.only(left: 20.0, top: 6.0, right: 6.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Pesquisar',
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ]);
      }),
    );
  }
}
