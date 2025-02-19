import 'package:buyo_ecommerce_app/app.dart';
import 'package:buyo_ecommerce_app/features/authentication/statecontrollers/onboarding/onboarding_controller.dart';
import 'package:buyo_ecommerce_app/features/shop/statecontrollers/search_statecontroller.dart';
import 'package:buyo_ecommerce_app/features/shop/viewmodels/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //TODO: Dispose of controllers
  Get.lazyPut(() => OnBoardingController());
  Get.lazyPut(() => ProductsViewModel());
  Get.lazyPut(() => SearchStateController());
  runApp(const App());
}
