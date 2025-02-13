import 'package:buyo_ecommerce_app/common/widgets_products/product_card.dart';
import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 8,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: 288),
        itemBuilder: (context, index) => ProductCard(
            product: ProductModel(
                id: "$index",
                title:
                    "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
                description: "Muito bom",
                discount: 42,
                price: 499.99,
                image: TImages.productImage52)));
  }
}
