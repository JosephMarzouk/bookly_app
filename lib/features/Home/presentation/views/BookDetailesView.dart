import 'package:bookly_app/features/Home/presentation/widgets/BookDeatilesViewBody.dart';
import 'package:flutter/material.dart';

class BookDeatilesView extends StatelessWidget {
  const BookDeatilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailesViewBody(),
    );
  }
}