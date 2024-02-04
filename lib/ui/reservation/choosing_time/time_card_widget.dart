import 'package:beach_club_virtual/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeCardWidget extends StatefulWidget {
  final String index;
  final String state;

  TimeCardWidget({required this.index, required this.state});

  @override
  _TimeCardWidget createState() => _TimeCardWidget();
}

class _TimeCardWidget extends State<TimeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Card(
        elevation: 3,
        child:
            Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children:[
                        Text(
                          "${widget.index}",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "${widget.state}",
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: AppColors.primaryTitle
                          ),
                        ),
                      ]

                    ),
                  ),
                ),
            ),
      ),
    );
  }
}
