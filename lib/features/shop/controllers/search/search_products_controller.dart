import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchProductsController extends GetxController {
  static SearchProductsController get instance => Get.find();

  TextEditingController searchController = TextEditingController();
}
