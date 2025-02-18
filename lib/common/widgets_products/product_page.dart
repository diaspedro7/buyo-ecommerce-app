// ignore_for_file: prefer_const_constructors

import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 457.0,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: TSizes.appBarHeight),
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
                                  padding:
                                      const EdgeInsets.only(bottom: TSizes.md),
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
                ),
                SizedBox(height: TSizes.spaceBtwSections),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("\$${product.price}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium),
                              SizedBox(width: TSizes.md),
                              product.discount == 0
                                  ? const SizedBox()
                                  : Container(
                                      padding: const EdgeInsets.all(TSizes.sm),
                                      decoration: BoxDecoration(
                                          color: TColors.secondary,
                                          borderRadius:
                                              BorderRadius.circular(TSizes.sm)),
                                      child: Text(
                                        "${product.discount}%",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .apply(color: TColors.black),
                                      ),
                                    ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: TColors.secondary),
                              Text(
                                "5.0 ",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text(
                                "(46)",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .apply(color: TColors.darkGrey),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
                      Text(
                        product.title,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(fontWeightDelta: 1),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: TSizes.xl,
            left: TSizes.defaultSpace,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(color: TColors.white, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: TColors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: TSizes.xl,
            right: TSizes.defaultSpace,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(color: TColors.white, shape: BoxShape.circle),
                child: Icon(
                  Iconsax.heart4,
                  size: 30,
                  color: TColors.black,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        Theme.of(context).elevatedButtonTheme.style!.copyWith(
                              backgroundColor:
                                  MaterialStatePropertyAll(TColors.black),
                              side: MaterialStatePropertyAll(BorderSide.none),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(TSizes.lg))),
                            ),
                    child: Text("Add to cart"),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
