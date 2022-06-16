import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/app_colors.dart';

class RatingContainer extends StatelessWidget {
  final double rating;

  const RatingContainer({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 12.0,
      left: 12.0,
      top: 12.0,
      child: Align(
        alignment: Alignment.topLeft,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const FaIcon(FontAwesomeIcons.solidStar, color: AppColors.yellowColor, size: 12.0),
                  const SizedBox(width: 6),
                  Text(
                    rating.toString(),
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColors.yellowColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
