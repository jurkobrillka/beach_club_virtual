import 'package:beach_club_virtual/ui/reservation/submitting_reservation/confirm_reservation_widget.dart';
import 'package:beach_club_virtual/ui/reservation/submitting_reservation/submitting_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/constants.dart';
import '../reservation_template_view.dart';

class ConfirmContinueWidget extends StatelessWidget {
  final String courtNum;

  ConfirmContinueWidget(this.courtNum);

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
                            fontWeight: FontWeight.bold, fontSize: 22),
                        "8:00 - 9:00"),
                    Text(
                      "ihrisko č. ${courtNum}",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: AppColors.primaryTitle,
                ),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReservationTeplateView(
                            "Potvrď \nrezervačku",
                            Column(children: [Expanded(child: SubmittingCardWidget()), ConfirmReservationWidget()]))),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
