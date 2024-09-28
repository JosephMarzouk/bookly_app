import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorText});

  final String errorText;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorText,
      style: Styles.textStyle18,
    );
  }
}
