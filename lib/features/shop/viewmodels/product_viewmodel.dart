import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsViewModel extends GetxController {
  static ProductsViewModel get instance => Get.find();

  var products = <ProductModel>[
    ProductModel(
        id: "1",
        title:
            "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
        description: "Muito bom",
        discount: 42,
        price: 499.99,
        image: TImages.productImage52),
    ProductModel(
        id: "1",
        title:
            "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
        description: "Muito bom",
        discount: 42,
        price: 499.99,
        image: TImages.productImage52),
    ProductModel(
        id: "1",
        title:
            "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
        description: "Muito bom",
        discount: 42,
        price: 499.99,
        image: TImages.productImage52),
    ProductModel(
        id: "1",
        title:
            "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
        description: "Muito bom",
        discount: 42,
        price: 499.99,
        image: TImages.productImage52),
    ProductModel(
        id: "1",
        title:
            "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
        description: "Muito bom",
        discount: 42,
        price: 499.99,
        image: TImages.productImage52),
  ].obs;

  var searchResults = <ProductModel>[].obs;

  void filterProducts(String search) {
    if (search.isEmpty) {
      debugPrint("Search is empty");
      searchResults.assignAll(products);
    } else {
      debugPrint("Entrou");

      searchResults.assignAll(products.where((element) =>
          element.title.toLowerCase().contains(search.toLowerCase())));

      update();
    }
  }
}
