import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movies/constants/constants.dart';
import 'package:flutter_movies/core/dioHelper/dio_helper.dart';
import 'package:flutter_movies/view/home/model/home_movies_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  HomeMoviesModel? homeMoviesModel;
  Future<void> getHomeMovies() async {
    emit(GetHomeLoading());
    final response = await DioHelper.getData(
      url: Constants.home,
      query: {
        'api_key': Constants.apiKey,
      },
    );
    try {
      homeMoviesModel = HomeMoviesModel.fromJson(response.data);
      emit(GetHomeSuccess());
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(GetHomeFailed());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(GetHomeFailed());
    }
  }
}
