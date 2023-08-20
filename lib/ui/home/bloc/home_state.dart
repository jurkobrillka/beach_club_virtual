part of 'home_cubit.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeSuccessState extends HomeState {

  final List<News> news;

  HomeSuccessState(this.news);
}