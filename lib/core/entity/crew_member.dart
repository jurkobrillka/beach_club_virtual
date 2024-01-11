import 'package:cloud_firestore/cloud_firestore.dart';


class CrewMember{
  final String nickname;
  final String surname;
  final String forename;
  final int age;
  final String position;
  final String profilePhotoID;
  final String backgroundPhotoID;
  final String fbAccount;
  final String igAccount;
  final String mailAccount;
  final String motto;
  final String proudMoment;
  final String sportDesc;
  final String aboutMe;

  CrewMember({
      required this.nickname,
    required this.surname,
    required this.forename,
    required this.age,
    required this.position,
    required this.aboutMe,
    required this.profilePhotoID,
    required this.backgroundPhotoID,
    required this.fbAccount,
    required this.igAccount,
    required this.mailAccount,
    required this.motto,
    required this.proudMoment,
    required this.sportDesc});

  Map<String, dynamic> toMap() {
    return {
      'nickname': this.nickname,
      'surname': this.surname,
      'forename': this.forename,
      'age': this.age,
      'position': this.position,
      'profilePhotoID': this.profilePhotoID,
      'backgroundPhotoID': this.backgroundPhotoID,
      'fbAccount': this.fbAccount,
      'igAccount': this.igAccount,
      'mailAccount': this.mailAccount,
      'motto': this.motto,
      'proudMoment': this.proudMoment,
      'sportDesc': this.sportDesc,
      'aboutMe': this.aboutMe,
    };
  }

  factory CrewMember.fromMap(Map<String, dynamic> map) {
    return CrewMember(
      nickname: map['nickname'] as String,
      surname: map['surname'] as String,
      forename: map['forename'] as String,
      age: map['age'] as int,
      position: map['position'] as String,
      profilePhotoID: map['profilePhotoID'] as String,
      backgroundPhotoID: map['backgroundPhotoID'] as String,
      fbAccount: map['fbAccount'] as String,
      igAccount: map['igAccount'] as String,
      mailAccount: map['mailAccount'] as String,
      motto: map['motto'] as String,
      proudMoment: map['proudMoment'] as String,
      sportDesc: map['sportDesc'] as String,
      aboutMe: map['aboutMe'] as String,
    );
  }
}