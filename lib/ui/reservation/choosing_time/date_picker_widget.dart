import 'package:beach_club_virtual/config/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class DatePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 10),
      child: Card(
        elevation: ELEVATION,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.elevatedCardSurface),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: Theme.of(context).textTheme.titleSmall,
                      "1.1.2024"),
                  Text(
                    "sobora",
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.calendar_month_rounded,
                  color: AppColors.primaryTitle,
                ),
                iconSize: 50,
                onPressed: () {
                  print("IDEM DALEJ");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
