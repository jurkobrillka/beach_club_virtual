import 'dart:html';

import 'package:beach_club_virtual/config/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class SubmittingCardWidget extends StatelessWidget{
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
          child: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(children: [],),
              Column(children: [],),
              TextFormField(
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Daj dajaku dsuhd",
                  hintStyle: TextStyle(
                    color: Colors.grey
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.red)
                  )
                ),
              ),
            ],
          ),),
        ),
      ),
    );
  }

}