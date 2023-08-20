import 'package:beach_club_virtual/core/entity/news.dart';
import 'package:beach_club_virtual/repository/news_repository.dart';
import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {

  final NewsRepository _repository;

  HomeCubit(this._repository) : super(HomeLoadingState());

  void fetchData() async {
    print("Fetching");
    emit(HomeLoadingState());
    final data = await _repository.getHomeNews();
    if (data != null) {
      emit(HomeSuccessState(data));
    } else {
      emit(HomeErrorState());
    }
  }

}
