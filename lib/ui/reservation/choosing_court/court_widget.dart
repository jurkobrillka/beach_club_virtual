import 'package:beach_club_virtual/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourtWidget extends StatelessWidget{

  final int number;


  CourtWidget(this.number);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, bottom: 10, right: 24, top: 10),
      child: Stack(
        children: [
          // First Container with yellow border and padding 25
          Padding(
            padding: EdgeInsets.all(25),
            child: Card(
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow),
                  color: AppColors.elevatedCardSurface,
                  image: DecorationImage(
                      image: AssetImage("assets/backgroundSandCourt.png"),
                      fit: BoxFit.cover,
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
              height: 2,
              color: Colors.black,
            ),
          ),
        ],),
    );
  }

}