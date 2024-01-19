import 'package:beach_club_virtual/ui/reservation/choosing_court/court_widget.dart';
import 'package:flutter/cupertino.dart';

class CourtsViewWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(/*
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index){
            return CourtWidget(index);
          }),
          */

      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CourtWidget(1)),
                  Expanded(
                      flex:1,
                      child: CourtWidget(2))
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CourtWidget(1)),
                  Expanded(
                      flex:1,
                      child: CourtWidget(2))
                ],

              ))
        ],
      ),
    );
  }


}