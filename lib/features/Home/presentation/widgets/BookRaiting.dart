import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.raiting});
  final MainAxisAlignment mainAxisAlignment;
  final int raiting;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
       const SizedBox(
          width: 6.3,
        ),
        Text(
          raiting.toString(),
          style: Styles.textStyle16,
        ),
       const SizedBox(
          width: 5,
        ),
       const Opacity(
          opacity: 0.65,
          child: Text(
            'pages',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
