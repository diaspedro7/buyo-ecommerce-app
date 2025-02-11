// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:buyo_ecommerce_app/features/shop/screens/widgets/shop_appbar.dart';
import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
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
        appBar: ShopAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(TSizes.lg),
          child: Column(children: [
            Container(
              width: 180,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: TColors.white,
                borderRadius: BorderRadius.circular(TSizes.productImageRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    padding: EdgeInsets.all(TSizes.sm),
                    decoration: BoxDecoration(
                      color: TColors.light,
                      borderRadius:
                          BorderRadius.circular(TSizes.productImageRadius),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage(TImages.productImage52),
                            fit: BoxFit.contain,
                            height: 150,
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Iconsax.heart5,
                                color: TColors.error,
                              ),
                            )),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.all(TSizes.xs),
                            decoration: BoxDecoration(
                                color: TColors.secondary,
                                borderRadius: BorderRadius.circular(TSizes.sm)),
                            child: Text(
                              "46%",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(color: TColors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Center(
                    child: Text(
                      "Iphone 14 Pro Max",
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        "Apple",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: 13,
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
