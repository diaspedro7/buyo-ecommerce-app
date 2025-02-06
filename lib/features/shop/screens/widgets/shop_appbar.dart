import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:buyo_ecommerce_app/utils/helpers/helper_functions.dart';
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
      title: SizedBox(
        height: TSizes.shopAppBarHeight,
        width: THelperFunctions.screenWidth(),
        child: Padding(
          padding: const EdgeInsets.all(TSizes.sm),
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
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(TSizes.shopAppBarHeight);
}
