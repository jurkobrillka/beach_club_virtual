//toto bude tahat z firebasu, cashovanie listu, ZISKAVANIE DAT
//CREATE READ UPDATE DELETE
//tu potrebovat len read

import 'package:beach_club_virtual/core/entity/crew_member.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final class CrewMembersRepository{

  final FirebaseFirestore firestore;
  List<CrewMember>? _cachedCrewMembers;

  CrewMembersRepository({required this.firestore});
  
  Future<List<CrewMember>?> getCrewMembers() async {
    if (_cachedCrewMembers != null){
      print("returnng Cached list");
      return _cachedCrewMembers;
    }
    
    final reference = firestore.collection("crew").withConverter<CrewMember>(
        fromFirestore: (snapshot, options){
          print(snapshot.data());
          return CrewMember.fromMap(snapshot.data()!);
        },
        toFirestore: (value, options) => value.toMap());


    print("before try");
    try{
      final result = await reference.get();
      _cachedCrewMembers = [];
      for(var member in result.docs){
        _cachedCrewMembers!.add(member.data());
      }
      return _cachedCrewMembers;
    }
    catch(e){
      print(e);
      print("error mess");
    }
  }



}