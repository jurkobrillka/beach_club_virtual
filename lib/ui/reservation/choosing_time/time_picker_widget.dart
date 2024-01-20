import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/constants.dart';

class TimePickerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0,top: 10, bottom: 10),
      child: Card(
        elevation: ELEVATION,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.elevatedCardSurface),
        ),
      ),
    );;
  }

}