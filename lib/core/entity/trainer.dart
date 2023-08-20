import 'package:beach_club_virtual/core/entity/crew_member.dart';

class Trainer extends CrewMember{

  final int trainerExperience;

  Trainer(this.trainerExperience, super.age, super.nickname, super.surname, super.forename);
}