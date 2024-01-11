import 'package:beach_club_virtual/config/stateEnum.dart';
import 'package:beach_club_virtual/core/entity/reservation_time.dart';
import 'package:beach_club_virtual/core/entity/user.dart';

class Reservation{
  final String reservationName;
  final bool isNameVisible;
  final User owner;
  final int court;
  final ReservationTime reservationTime;
  final String sport;
  final String additionalInfo;
  final ReservationState state;

  Reservation(this.reservationName, this.isNameVisible, this.owner, this.court,
      this.reservationTime, this.sport, this.additionalInfo, this.state);
}

