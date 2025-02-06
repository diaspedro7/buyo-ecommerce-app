// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:buyo_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: TColors.primary,
          toolbarHeight: 200,
          //actions: [
          // SizedBox(
          //   height: 200,
          //   child: Positioned(
          //       top: TSizes.defaultSpace,
          //       right: 10,
          //       child: IconButton(
          //           onPressed: () {}, icon: Icon(Iconsax.shopping_bag))),
          // )
          // ],
          title: SizedBox(
            height: 200,
            width: THelperFunctions.screenWidth(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: TSizes.md, horizontal: TSizes.sm),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TTexts.homeAppbarTitle,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: TColors.grey),
                      ),
                      SizedBox(
                        width: 200,
                        height: 70,
                        child: Text(TTexts.homeAppbarSubTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(
                                    color: TColors.white,
                                    overflow: TextOverflow.ellipsis),
                            maxLines: 3),
                      ),
                    ],
                  ),
                  Positioned(
                      top: TSizes.defaultSpace,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.shopping_cart,
                            color: TColors.white,
                          )))
                ],
              ),
            ),
          ),
        ),
        body: Container());
  }
}
