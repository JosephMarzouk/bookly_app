import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageURL,
            errorWidget:(context, url ,error)=> const Icon(Icons.error),)
        ),
      ),
    );
  }
}
