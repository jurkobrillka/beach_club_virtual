import 'package:beach_club_virtual/config/constants.dart';
import 'package:beach_club_virtual/core/extensions/day_name_to_slovak.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/colors.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now();
  DateTime todayDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
      child: Card(
        elevation: ELEVATION,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: AppColors.elevatedCardSurface),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                        ),
                        "${selectedDate.day}.${selectedDate.month}.${selectedDate.year}"),
                    Text(
                      "${DateFormat('EEEE').format(selectedDate).dayNameToSlovak()}",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontStyle: FontStyle.italic
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.calendar_month_rounded,
                  color: AppColors.primaryTitle,
                ),
                iconSize: 50,
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: todayDate,
                      helpText: "Zvoľ si dátum",
                      lastDate: DateTime(2100));

                  if (dateTime != null){
                    setState((){
                      selectedDate = dateTime;
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

