import 'package:beach_club_virtual/ui/about_us/widgets/player_info.dart';
import 'package:beach_club_virtual/ui/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("team.JPG"), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.2)),
                          child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const ImageIcon(
                                  AssetImage("icons/go-back.png"))),
                        ),
                      ),
                    )
                  ]),
                ),
              )),
          Expanded(
              flex: 7,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xffDDDDDD),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: ListView(
                  ),
                ),
              ))
        ],
      ),
    );
  }
}


