import 'package:beach_club_virtual/repository/crew_members_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/entity/crew_member.dart';

part 'about_us_state.dart';

class AboutUsCubit extends Cubit<AboutUsState> {

  final CrewMembersRepository _repository;

  AboutUsCubit(this._repository) : super(AboutUsLoadingState());

  void fetchData() async{
    print("fetching about us data");
    emit(AboutUsLoadingState());
    final crewData = await _repository.getCrewMembers();
    if(crewData != null){
      emit(AboutUsSuccessState(crewData));
    }
    else{
      emit(AboutUsErrorState());
      print('Error state wtf preco');
    }

  }
}
