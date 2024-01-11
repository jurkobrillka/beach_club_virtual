
import 'package:beach_club_virtual/repository/crew_members_repository.dart';
import 'package:beach_club_virtual/repository/news_repository.dart';
import 'package:beach_club_virtual/ui/about_crew_member/about_crew_member.dart';
import 'package:beach_club_virtual/ui/about_us/bloc/about_us_cubit.dart';
import 'package:beach_club_virtual/ui/home/bloc/home_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future initDependencies() async {
  
  // Blocs
  di.registerFactory(() => HomeCubit(di()));
  di.registerFactory(() => AboutUsCubit(di()));
  
  
  // Repositories
  di.registerLazySingleton(() => NewsRepository(firestore: di()));
  di.registerLazySingleton(() => CrewMembersRepository(firestore: di()));

  //Internal
  
  
  //External
  di.registerLazySingleton(() => FirebaseFirestore.instance);


}
