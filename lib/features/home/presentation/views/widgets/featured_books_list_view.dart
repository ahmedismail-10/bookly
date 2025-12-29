import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: GestureDetector(
              onTap: () {
                Get.to(() => const BookDetailsView());
              },
              child: const BookImage(),
            ),
          );
        },
      ),
    );
  }
}
