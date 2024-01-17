import 'package:beach_club_virtual/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReservationTeplateView extends StatelessWidget {
  final String title;
  final Widget content;

  const ReservationTeplateView(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.backgroundWhite),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 24, bottom: 10, right: 24, top: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(this.title,
                        style: Theme.of(context).textTheme.displayLarge,
                      )))),
          Expanded(
              flex: 3,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 24, bottom: 10, right: 24, top: 10),
                  child: content))
        ],
      ),
    );
  }
}
