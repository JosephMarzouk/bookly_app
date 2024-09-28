import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/widgets/BookRaiting.dart';
import 'package:bookly_app/features/Home/presentation/widgets/BooksAction.dart';
import 'package:bookly_app/features/Home/presentation/widgets/CustomAppBarBookDetailes.dart';
import 'package:bookly_app/features/Home/presentation/widgets/CustomBookImage.dart';
import 'package:bookly_app/features/Home/presentation/widgets/SimilarBooksListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                  child: const CustomBookImage(imageURL: 'https://i.pinimg.com/originals/e9/1a/be/e91abeacee2029561d8d3128d8472ca7.jpg',),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 4,
                ),
                Opacity(
                    opacity: 0.85,
                    child: Text(
                      'The description',
                      style: Styles.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    )),
                const SizedBox(
                  height: 14,
                ),
                const BookRaiting(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(
                    child: SizedBox(
                  height: 30,
                )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('You can also like :',
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w600))),
                const SizedBox(
                  height: 15,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
