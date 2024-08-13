  import 'package:bookly_app/features/search/presentaion/widgets/SearchResultView.dart';
import 'package:bookly_app/features/search/presentaion/widgets/customSearchTextField.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextFiled(),
          
        ),
        SearchResultListView(),
      ],
    );
  }
}


