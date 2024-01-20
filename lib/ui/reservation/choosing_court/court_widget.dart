import 'package:beach_club_virtual/config/colors.dart';
import 'package:beach_club_virtual/ui/reservation/choosing_time/time_date_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reservation_template_view.dart';

class CourtWidget extends StatelessWidget {
  final int number;

  CourtWidget(this.number);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, bottom: 15, right: 10, top: 15),
      child: Stack(
        children: [
          // First Container with yellow border and padding 25
          Material(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                splashColor: AppColors.onSuccess,
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReservationTeplateView(
                              "Vyber si \nčas",
                              TimeDateViewWidget())),
                  );
                },
                child: Card(
                  elevation: 3,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 15),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                fontStyle: FontStyle.normal
                              ),
                              "${number}."
                          )),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryTitle, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: AppColors.elevatedCardSurface,
                      image: DecorationImage(
                        image: AssetImage("assets/backgroundSandCourt.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Center the black line within the first Container
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: 4,
              color: AppColors.primaryTitle,
            ),
          ),
        ],
      ),
    );
  }
}
