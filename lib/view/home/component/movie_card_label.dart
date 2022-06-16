import 'dart:ui';

import 'package:flutter/material.dart';

class MovieCardLabel extends StatelessWidget {
  const MovieCardLabel({
    Key? key,
    required this.movieName,
  }) : super(key: key);

  final String movieName;

  @override
  Widget build(BuildContext context) {
    const double radius = 18.0;

    return Positioned(
      bottom: 0.0,
      right: 0.0,
      left: 0.0,
      child: Center(
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              height: 64,
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(radius), bottomRight: Radius.circular(radius)),
                  color: Colors.grey.shade400.withOpacity(0.3)),
              child: Center(
                child: Text(
                  movieName,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
