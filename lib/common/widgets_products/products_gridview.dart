import 'package:buyo_ecommerce_app/common/widgets_products/product_card.dart';
import 'package:buyo_ecommerce_app/features/shop/viewmodels/product_viewmodel.dart';
import 'package:buyo_ecommerce_app/features/shop/viewmodels/shop_viewmodel.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productsVM = ProductsViewModel.instance;
    final shopVM = ShopViewModel.instance;

    return GridView.builder(
        itemCount: productsVM.products.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSizes.gridViewSpacing,
            crossAxisSpacing: TSizes.gridViewSpacing,
            mainAxisExtent: 265 //ProductCard.height
            ),
        itemBuilder: (context, index) {
          final product = productsVM.products[index];
          return ProductCard(
              product: product,
              shop: shopVM.getShopBasedOnShopId(product.shopId));
        });
  }
}
