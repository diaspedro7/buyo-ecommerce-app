import 'package:buyo_ecommerce_app/features/shop/models/product_model.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsViewModel extends GetxController {
  static ProductsViewModel get instance => Get.find();

  var products = <ProductModel>[
    ProductModel(
        id: "1",
        title:
            "IPhone 16 Pro Max Apple (256GB) Titânio Natural, Tela de 6,9, 5G e Câmera de 48MP",
        description: "Desbloqueie a inovação com o iPhone 16 Pro Max da Apple!\n Se você busca o melhor em tecnologia, desempenho e design, o iPhone 16 Pro Max é a escolha perfeita. Com 256GB de armazenamento, você terá espaço de sobra para suas fotos, vídeos e aplicativos favoritos. Características:Design Premium: Corpo em Titânio Natural, que oferece uma estética sofisticada e durabilidade incomparável.Tela Imersiva de 6,9: Uma tela Super Retina XDR com 120Hz de taxa de atualização, perfeita para assistir vídeos, jogar e navegar com qualidade impecável.Câmera de 48MP: Capture fotos e vídeos deslumbrantes com a câmera de 48MP, projetada para resultados profissionais, até mesmo em condições de baixa luminosidade.Conectividade 5G: Desfrute de uma navegação e streaming super rápidos com a conexão 5G, garantindo uma experiência online sem interrupções.Armazenamento de 256GB: Amplie suas possibilidades com bastante espaço para todos os seus arquivos e dados essenciais.Qualidade e Performance: O iPhone 16 Pro Max é alimentado pelo poderoso chip A17, garantindo velocidade, performance e eficiência energética para o seu dia a dia.Garanta agora o seu e tenha a experiência mais avançada da Apple em suas mãos!",
        discount: 42,
        price: 499.99,
        image: [TImages.productImage52]),
  ].obs;

  var searchResults = <ProductModel>[].obs;

  void filterProducts(String search) {
    if (search.isEmpty) {
      debugPrint("Search is empty");
      searchResults.assignAll(products);
    } else {
      debugPrint("Entrou");

      searchResults.assignAll(products.where((element) =>
          element.title.toLowerCase().contains(search.toLowerCase())));

      update();
    }
  }
}
