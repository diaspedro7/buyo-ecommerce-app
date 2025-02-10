// ignore_for_file: prefer_const_constructors

import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                    Text(TTexts.longAppName,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: TColors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.shopping_cart,
                          color: TColors.white,
                        ))
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                TextFormField(
                  cursorColor: TColors.primary,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: TColors.textSecondary,
                      ),
                      hintText: "Search",
                      hintStyle: Theme.of(context)
                          .inputDecorationTheme
                          .hintStyle!
                          .apply(color: TColors.textSecondary),
                      fillColor: TColors.white,
                      filled: true,
                      focusedBorder: Theme.of(context)
                          .inputDecorationTheme
                          .focusedBorder!
                          .copyWith(
                              borderSide: const BorderSide(
                                  color: TColors.grey, width: 1))),
                )
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
