import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 150 / 224,
      child: Image(
        image: AssetImage(AssetsData.testImage),
      ),
    );
  }
}
