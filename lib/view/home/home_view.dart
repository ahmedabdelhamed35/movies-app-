import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movies/constants/constants.dart';
import 'package:flutter_movies/core/router/router.dart';
import 'package:flutter_movies/view/home/widgets/app_bar_content.dart';
import 'package:flutter_movies/view/home/component/movie_card.dart';
import 'package:flutter_movies/view/home/controller/home_cubit.dart';

import '../movie_details/movie_details_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeMovies(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = HomeCubit.get(context);
          return Scaffold(
              appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0.0, title: const AppBarContent()),
              body: (cubit.homeMoviesModel == null || state is GetHomeLoading)
                  ? const Center(
                      child: CupertinoActivityIndicator(
                        animating: true,
                        radius: 22.0,
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      itemCount: cubit.homeMoviesModel!.results!.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12.0,
                        crossAxisSpacing: 12.0,
                        childAspectRatio: 0.5,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8.0),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => MagicRouter.navigateTo(MovieDetailsView(
                            movie: cubit.homeMoviesModel!.results![index]!,
                          )),
                          borderRadius: BorderRadius.circular(18.0),
                          child: MovieCard(
                            rating: cubit.homeMoviesModel!.results![index]!.vote_average!,
                            movieImgURL: Constants.mainImagePath +
                                cubit.homeMoviesModel!.results![index]!.poster_path!.toString(),
                            movieName: cubit.homeMoviesModel!.results![index]!.original_title!.toString(),
                          ),
                        );
                      },
                    ));
        },
      ),
    );
  }
}
