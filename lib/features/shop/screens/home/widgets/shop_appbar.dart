// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:buyo_ecommerce_app/features/shop/controllers/search/search_products_controller.dart';
import 'package:buyo_ecommerce_app/features/shop/screens/search/search_products_page.dart';
import 'package:buyo_ecommerce_app/common/widgets_products/search_products_textfield.dart';
import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchProductsController());

    return AppBar(
      backgroundColor: TColors.primary,
      toolbarHeight: TSizes.shopAppBarHeight,
      centerTitle: false,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: SizedBox(
        height: TSizes.shopAppBarHeight,
        width: double.infinity,
        child: Stack(children: [
          Positioned(
            top: 0,
            right: -80,
            child: Transform.rotate(
              angle: -0.2,
              child: Image(
                image: const AssetImage(
                  "assets/images/graphic_elements/drop_organic_shape.png",
                ),
                color: TColors.textWhite.withOpacity(0.5),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: -220,
            right: -200,
            child: Transform.rotate(
              angle: -1.8,
              child: Image(
                image: const AssetImage(
                  "assets/images/graphic_elements/drop_organic_shape.png",
                ),
                color: TColors.textWhite.withOpacity(0.5),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: TSizes.sm, horizontal: TSizes.md),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SearchTextField(
                        onFieldSubmitted: (value) {
                          Get.to(() => SearchProductsPage());
                        },
                      ),
                    ),
                    // Text(TTexts.longAppName,
                    //     style: Theme.of(context)
                    //         .textTheme
                    //         .headlineSmall!
                    //         .apply(color: TColors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.shopping_cart,
                          color: TColors.white,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(TSizes.shopAppBarHeight);
}
