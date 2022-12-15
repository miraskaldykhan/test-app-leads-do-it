part of 'home_page_cubit.dart';

@immutable
abstract class HomePageState {}

class HomePageInitial extends HomePageState {}

class HomePageLoading extends HomePageState {}

class HomePageSuccess extends HomePageState {
  final Events events;

  HomePageSuccess({required this.events});
}

class HomePageError extends HomePageState {
  final String message;

  HomePageError({required this.message});
}
