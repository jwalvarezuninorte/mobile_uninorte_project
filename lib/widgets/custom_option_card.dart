import 'package:flutter/material.dart';

import 'custom_rounded_image.dart';

class CustomOptionCard extends StatelessWidget {
  const CustomOptionCard({
    super.key,
    required this.rutaImage,
    required this.title,
    required this.subtitle,
    this.size,
  });

  final String rutaImage;
  final String title;
  final String subtitle;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CustomRoundedImage(
            size: size ?? 160,
            imagePath: rutaImage,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(subtitle),
        ],
      ),
    );
  }
}
