import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movies/constants/app_colors.dart';
import 'package:flutter_movies/constants/constants.dart';

import '../home/model/home_movies_model.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({Key? key, required this.movie}) : super(key: key);
  final HomeMoviesModelResults movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: CachedNetworkImage(
              imageUrl: Constants.mainImagePath + movie.backdrop_path!.toString(), fit: BoxFit.cover),
        ),
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            Text(
              movie.original_title!.toString(),
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            Text(
              movie.overview!.toString(),
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white70),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Release Date: ${movie.release_date!.toString()}',
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Vote Average: ${movie.vote_average!.toString()} star',
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Vote count: ${movie.vote_count!.toString()}',
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Adult Content: ' + (movie.adult! ? 'Yes' : 'No'),
              textAlign: TextAlign.start,
            ),
          ],
        )
      ],
    ));
  }
}
