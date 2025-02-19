import 'package:buyo_ecommerce_app/features/shop/models/shop_model.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class ShopViewModel extends GetxController {
  static ShopViewModel get instance => Get.find();

  var shopsList = <ShopModel>[
    ShopModel(
        shopId: "00",
        shopImage: TImages.iphoneStoreLogo,
        shopName: "IPhone Store"),
    ShopModel(
        shopId: "01",
        shopName: "Geek Gamer Store",
        shopImage: TImages.geekGamerStoreLogo),
  ].obs;

  ShopModel getShopBasedOnShopId(String shopId) {
    return shopsList.firstWhere((shop) => shop.shopId == shopId);
  }
}
