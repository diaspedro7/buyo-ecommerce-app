import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SearchStateController extends GetxController {
  static SearchStateController get instance => Get.find();

  final TextEditingController searchController = TextEditingController();
}
