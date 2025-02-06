// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:buyo_ecommerce_app/features/shop/screens/widgets/shop_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: ShopAppBar(), body: Container());
  }
}
