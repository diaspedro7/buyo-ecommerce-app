// ignore_for_file: prefer_const_constructors

import 'package:buyo_ecommerce_app/common/widgets_products/product_card.dart';
import 'package:buyo_ecommerce_app/common/widgets_products/search_products_textfield.dart';
import 'package:buyo_ecommerce_app/features/shop/controllers/search/search_products_controller.dart';
import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:get/get.dart';

class SearchProductsPage extends StatelessWidget {
  const SearchProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SearchProductsController.instance;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: TColors.primary,
          title: SearchTextField(
            onFieldSubmitted: (value) {
              debugPrint("Search: ${controller.searchResults}");
              controller.filterProducts(value);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Obx(() => GridView.builder(
                itemCount: controller.searchResults.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: TSizes.gridViewSpacing,
                    crossAxisSpacing: TSizes.gridViewSpacing,
                    mainAxisExtent: 288),
                itemBuilder: (context, index) {
                  final product = controller.searchResults[index];
                  return ProductCard(product: product);
                })),
          ),
        ));
  }
}
