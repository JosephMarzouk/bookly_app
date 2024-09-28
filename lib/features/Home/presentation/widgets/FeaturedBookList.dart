import 'package:bookly_app/core/widgets/CustomErrorWidget.dart';
import 'package:bookly_app/core/widgets/CustomLOadingIndecator.dart';
import 'package:bookly_app/features/Home/presentation/manager/FeaturedBooksCubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksLoading)
        {
 return const CustomLoadingIndecator();
        }
        if(state is FeaturedBooksSuccess)
        {
             return SizedBox(
          height: MediaQuery.of(context).size.height * .22,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  CustomBookImage(imageURL: state.books[index].volumeInfo.imageLinks.thumbnail,);
              }),
        );
        }
        else if (state is FeaturedBooksFailure)
        {
          return CustomErrorWidget(errorText: state.errMessage,);
        }
        else
        {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
