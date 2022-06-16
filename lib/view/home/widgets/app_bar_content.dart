import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/images/icon.png', fit: BoxFit.cover, width: 52.0),
        const SizedBox(width: 6.0),
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: 'Flutter', style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)),
              TextSpan(
                  text: ' Movies',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.mainRedColor, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
