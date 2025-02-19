import 'package:get/get.dart';

class ProductPageStateController extends GetxController {
  static ProductPageStateController get instance => Get.find();
  Rx<bool> descriptionIsExpanded = false.obs;
}
