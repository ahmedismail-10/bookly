import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * (224 / 812),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: .horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: .only(right: index == 9 ? 0 : 16),
            child: const BookImage(),
          );
        },
      ),
    );
  }
}
