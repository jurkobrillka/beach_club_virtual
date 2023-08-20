import 'package:beach_club_virtual/core/entity/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonNewsCard extends StatelessWidget {

  final News news;

  const ButtonNewsCard(this.news);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              boxShadow: [
                const BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 0.0,
                    offset: Offset(6.0, 4.0))
              ]),
          width: 150,
          height: 200,
          //color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          news.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          news.dateTime.toString(),
                          style: TextStyle(fontSize: 12),
                        ),
                      ]),
                ),
                Expanded(
                    flex: 1,
                    child: Text(
                      news.subTitle,
                      overflow: TextOverflow.ellipsis, //... a text dlhy
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ))
              ],
            ),
          )),
    );
  }
}
