import 'package:beach_club_virtual/ui/reservation/choosing_time/time_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/constants.dart';

class TimePickerWidget extends StatelessWidget{



  List<Map<String, String>> generateTimeSlots() {
    List<Map<String, String>> timeSlots = [];

    for (int i = 6; i <= 21; i++) {
      String startTime = '$i:00';
      String endTime = '${i + 1}:00';

      Map<String, String> slot = {
        'time': '$startTime - $endTime',
        'state': 'Voľné', // You can change this to 'Obsadené' as needed
      };

      timeSlots.add(slot);
    }

    return timeSlots;
  }


  late List<Map<String, String>> timeSlots;

  xTimePickerWidget() {
    timeSlots = generateTimeSlots();
  }
  @override
  Widget build(BuildContext context) {
    xTimePickerWidget();
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0,top: 10, bottom: 10),
      child: Card(
        elevation: ELEVATION,
        child: Container(
          child: ListView.builder(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              itemCount: 20,
              itemBuilder: (context, index){
                return TimeCardWidget(index: timeSlots[index]['time'] ?? '8-00', state: "Voľné",);
              },
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.elevatedCardSurface),
        ),
      ),
    );;
  }

}