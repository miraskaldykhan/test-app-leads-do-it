import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leadsdoit_test/core/models/events.dart';
import 'package:leadsdoit_test/pages/home_page/repo/home_page_repo.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final HomePageRepository homePageRepository;

  HomePageCubit(
    this.homePageRepository,
  ) : super(HomePageInitial());

  Future<void> getEvents() async {
    emit(HomePageLoading());
    try {
      await homePageRepository.getEvents().then(
            (value) => emit(
              HomePageSuccess(
                events: value,
              ),
            ),
          );
    } catch (e) {
      emit(
        HomePageError(
          message: e.toString(),
        ),
      );
    }
  }
}
