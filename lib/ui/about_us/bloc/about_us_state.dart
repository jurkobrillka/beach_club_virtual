
part of 'about_us_cubit.dart';

abstract class AboutUsState {}

class AboutUsInitial extends AboutUsState {}

class AboutUsErrorState extends AboutUsState{}

class AboutUsLoadingState extends AboutUsState{}

class AboutUsSuccessState extends AboutUsState{

  final List<CrewMember> crewMembers;

  AboutUsSuccessState(this.crewMembers);

}