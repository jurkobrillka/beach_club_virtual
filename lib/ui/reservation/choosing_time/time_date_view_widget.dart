import 'package:beach_club_virtual/ui/reservation/choosing_time/time_picker_widget.dart';
import 'package:flutter/cupertino.dart';

import 'date_picker_widget.dart';

class TimeDateViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [DatePickerWidget(), Expanded(child: TimePickerWidget())],
      ),
    );
  }
}
