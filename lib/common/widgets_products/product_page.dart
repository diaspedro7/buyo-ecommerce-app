// ignore_for_file: prefer_const_constructors

import 'package:buyo_ecommerce_app/features/shop/models/shop_model.dart';
import 'package:buyo_ecommerce_app/features/shop/statecontrollers/product_page_statecontroller.dart';
import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {super.key, required this.product, required this.shop});
  final ProductModel product;
  final ShopModel shop;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductPageStateController());

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: TSizes.heightProductImage,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: TSizes.appBarHeight),
                  color: TColors.light,
                  child: PageView.builder(
                      itemCount: product.image.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Center(
                                child: Image.asset(
                              product.image[index],
                              fit: BoxFit.contain,
                            )),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: TSizes.md),
                                  child: Container(
                                    height: TSizes.heightContainerImageCount,
                                    width: TSizes.widthContainerImageCount,
                                    decoration: BoxDecoration(
                                      color: TColors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${index + 1} / ${product.image.length}",
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
                          //TODO: Add the price without discount
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              product.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(fontWeightDelta: 1),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
                      Divider(
                        height: TSizes.dividerHeight,
                        color: TColors.black,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Obx(
                              () => Text(
                                product.description,
                                style: Theme.of(context).textTheme.labelMedium,
                                overflow: TextOverflow.fade,
                                maxLines: controller.descriptionIsExpanded.value
                                    ? null
                                    : 3,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: TSizes.xs),
                      GestureDetector(
                        onTap: () {
                          controller.descriptionIsExpanded.value =
                              !controller.descriptionIsExpanded.value;
                        },
                        child: Column(
                          children: [
                            Obx(
                              () => Text(
                                controller.descriptionIsExpanded.value
                                    ? "Read less"
                                    : "Read more",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: TColors.black),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down, color: TColors.black),
                          ],
                        ),
                      ),
                      SizedBox(height: TSizes.xs),
                      Divider(
                        height: TSizes.dividerHeight,
                        color: TColors.black,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
                      Container(
                        height: TSizes.shopContainerWidgetHeight,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: TColors.white,
                          borderRadius: BorderRadius.circular(TSizes.sm),
                          border: Border.all(color: TColors.grey, width: 3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(TSizes.sm),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: TSizes.shopContainerImage,
                                    width: TSizes.shopContainerImage,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(shop.shopImage),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: TSizes.spaceBtwItems),
                                  SizedBox(
                                    width: TSizes.shopContainerTitleWidth,
                                    child: Text(
                                      shop.shopName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  //TODO: Implements go to shop
                                },
                                child: Icon(
                                  Iconsax.arrow_right_2,
                                  color: TColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: TSizes
                              .additionalSpaceForButton) //This sizedbox serves to have a little bit more of space in bottom for the elevated button no hide the ui
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
                controller.dispose();
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.all(TSizes.ten),
                decoration:
                    BoxDecoration(color: TColors.white, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_back,
                  size: TSizes.iconLg,
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
                padding: EdgeInsets.all(TSizes.ten),
                decoration:
                    BoxDecoration(color: TColors.white, shape: BoxShape.circle),
                child: Icon(
                  Iconsax.heart4,
                  size: TSizes.iconLg,
                  color: TColors.black,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: TSizes.sm,
                  right: TSizes.sm,
                  bottom: TSizes.sm,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        Theme.of(context).elevatedButtonTheme.style!.copyWith(
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
