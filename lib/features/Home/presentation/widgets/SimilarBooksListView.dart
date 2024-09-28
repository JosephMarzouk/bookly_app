import 'package:bookly_app/features/Home/presentation/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBookImage(imageURL: 'https://i.pinimg.com/originals/e9/1a/be/e91abeacee2029561d8d3128d8472ca7.jpg',);
          }),
    );
  }
}
