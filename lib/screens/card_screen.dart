import 'package:flutter/material.dart';
import 'package:my_app/Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCarType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'Valorant',
            imageUrl:
                'https://cdn1.epicgames.com/offer/cbd5b3d310a54b12bf3fe8c41994174f/EGS_VALORANT_RiotGames_S1_2560x1440-160cacc798ef1693cc0a339e869f1761',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'League of Legends ',
            imageUrl:
                'https://phantom-marca.unidadeditorial.es/abfd01e815b28d5553ed7ba9fa2e9647/crop/0x0/1980x1112/resize/1320/f/jpg/assets/multimedia/imagenes/2022/03/16/16474267987028.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'Fornite',
            imageUrl:
                'https://cdn2.unrealengine.com/7up-3840x2160-c93d04c02c26.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'Halo Infinite',
            imageUrl:
                'https://compass-ssl.xbox.com/assets/9c/94/9c944d9c-7ef1-4b46-9f68-9b02966d3993.jpg?n=Halo-Infinite_GLP-Page-Hero-0_1083x609.jpg',
          )
        ],
      ),
    );
  }
}
