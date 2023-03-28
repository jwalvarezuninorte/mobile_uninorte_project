import 'package:flutter/material.dart';

import '../widgets/custom_appbar_home.dart';
import '../widgets/custom_option_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List menuOptions = [
      {
        'title': 'Bicicleta',
        'subtitle': 'Recorre la ciudad',
        'image': 'assets/images/image1.jpeg',
      },
      {
        'title': 'Trotar',
        'subtitle': 'Recorre la ciudad',
        'image': 'assets/images/image2.jpeg',
      },
      {
        'title': 'Caminata',
        'subtitle': 'Recorre la ciudad',
        'image': 'assets/images/image2.jpeg',
      },
    ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbarHome(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Segmentos guardados',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Ver todos',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) {
                    return const CustomOptionCard(
                      rutaImage: 'assets/images/profile.jpg',
                      title: 'Option',
                      subtitle: 'description',
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            // aqui puede ir mas widgets
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Inicia tu aventura',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Graba tus recorridos favoritos, loremp ipsum',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                menuOptions.length,
                (index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => Navigator.pushNamed(context, 'map'),
                    child: CustomOptionCard(
                      size: 90,
                      rutaImage: 'assets/images/image${index + 1}.jpeg',
                      title: menuOptions[index]['title'],
                      subtitle: '',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
