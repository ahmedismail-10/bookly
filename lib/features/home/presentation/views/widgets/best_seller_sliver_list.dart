import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: BookItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
