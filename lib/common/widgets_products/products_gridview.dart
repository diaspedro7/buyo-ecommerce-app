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
            mainAxisExtent: 265 //ProductCard.height
            ),
        itemBuilder: (context, index) => ProductCard(
            product: ProductModel(
                id: "$index",
                title:
                    "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
                description: "Desbloqueie a inovação com o iPhone 16 Pro Max da Apple!\n Se você busca o melhor em tecnologia, desempenho e design, o iPhone 16 Pro Max é a escolha perfeita. Com 256GB de armazenamento, você terá espaço de sobra para suas fotos, vídeos e aplicativos favoritos. Características:Design Premium: Corpo em Titânio Natural, que oferece uma estética sofisticada e durabilidade incomparável.Tela Imersiva de 6,9: Uma tela Super Retina XDR com 120Hz de taxa de atualização, perfeita para assistir vídeos, jogar e navegar com qualidade impecável.Câmera de 48MP: Capture fotos e vídeos deslumbrantes com a câmera de 48MP, projetada para resultados profissionais, até mesmo em condições de baixa luminosidade.Conectividade 5G: Desfrute de uma navegação e streaming super rápidos com a conexão 5G, garantindo uma experiência online sem interrupções.Armazenamento de 256GB: Amplie suas possibilidades com bastante espaço para todos os seus arquivos e dados essenciais.Qualidade e Performance: O iPhone 16 Pro Max é alimentado pelo poderoso chip A17, garantindo velocidade, performance e eficiência energética para o seu dia a dia.Garanta agora o seu e tenha a experiência mais avançada da Apple em suas mãos!",
                discount: 42,
                price: 499.99,
                image: [TImages.productImage52])));
  }
}
