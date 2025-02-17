// ignore_for_file: prefer_const_constructors

import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:iconsax/iconsax.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Iconsax.heart5,
                color: TColors.error,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: TColors.light,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Center(
                          child: Image.asset(
                        product.image,
                        fit: BoxFit.contain,
                      )),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: TSizes.md),
                            child: Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                color: TColors.black.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "$index / 10",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .apply(
                                        color: TColors.textWhite,
                                      ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
