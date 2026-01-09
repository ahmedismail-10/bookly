import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (112 / 812),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: .horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: .only(right: index == 9 ? 0 : 10),
            // child: const BookImage(
            //   imageUrl: '',
            // ),
          );
        },
      ),
    );
  }
}
