part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetHomeLoading extends HomeState {}

class GetHomeSuccess extends HomeState {}

class GetHomeFailed extends HomeState {}
