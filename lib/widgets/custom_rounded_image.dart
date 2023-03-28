import 'package:flutter/material.dart';

class CustomRoundedImage extends StatelessWidget {
  const CustomRoundedImage({
    super.key,
    required this.imagePath,
    this.size,
  });

  final String imagePath;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 160.0,
      width: size ?? 160.0,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red.withOpacity(0.3),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
