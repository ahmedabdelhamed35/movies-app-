import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movies/constants/app_colors.dart';
import 'package:flutter_movies/view/home/component/movie_card_label.dart';
import 'package:flutter_movies/view/home/widgets/rating_container.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.rating,
    required this.movieName,
    required this.movieImgURL,
  }) : super(key: key);

  final double rating;
  final String movieName;
  final String movieImgURL;

  @override
  Widget build(BuildContext context) {
    const double radius = 18.0;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: AppColors.grayColor,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: CachedNetworkImage(
              imageUrl: movieImgURL,
              fit: BoxFit.cover,
            ),
          ),
          MovieCardLabel(movieName: movieName),
          RatingContainer(rating: rating),
        ],
      ),
    );
  }
}
