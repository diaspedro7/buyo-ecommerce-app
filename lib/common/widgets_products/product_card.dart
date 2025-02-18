import 'package:buyo_ecommerce_app/common/widgets_products/product_page.dart';
import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductPage(product: product));
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: TColors.light,
                borderRadius: BorderRadius.circular(TSizes.productImageRadius),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage(product.image),
                      fit: BoxFit.contain,
                      height: 150,
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Iconsax.heart4,
                          color: TColors.error,
                        ),
                      )),
                  product.discount == 0
                      ? const SizedBox()
                      : Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: const EdgeInsets.all(TSizes.xs),
                            decoration: BoxDecoration(
                                color: TColors.secondary,
                                borderRadius: BorderRadius.circular(TSizes.sm)),
                            child: Text(
                              "${product.discount}%",
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
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              height: 60,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      //"iPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
                      product.title,
                      style: Theme.of(context).textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    //"\$599.99",
                    "\$${product.price}",
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
