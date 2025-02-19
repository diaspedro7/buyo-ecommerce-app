// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buyo_ecommerce_app/common/widgets_products/products_gridview.dart';
import 'package:buyo_ecommerce_app/features/shop/screens/home/widgets/shop_appbar.dart';
import 'package:buyo_ecommerce_app/features/shop/viewmodels/product_viewmodel.dart';
import 'package:buyo_ecommerce_app/features/shop/viewmodels/shop_viewmodel.dart';

import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ShopViewModel());
    Get.lazyPut(() => ProductsViewModel());

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const ShopAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(TSizes.lg),
          child: SingleChildScrollView(
            child: Column(children: [GridViewProducts()]),
          ),
        ));
  }
}
