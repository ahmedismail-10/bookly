import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * (224 / 812),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: .horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: .only(
                    right: index == state.books.length - 1 ? 0 : 16,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: BookImage(
                      imageUrl:
                          state
                              .books[index]
                              .volumeInfo
                              ?.imageLinks
                              ?.thumbnail ??
                          '',
                    ),
                  ),
                );
              },
            );
          } else if (state is FeaturedBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
