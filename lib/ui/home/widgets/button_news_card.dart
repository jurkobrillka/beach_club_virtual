import 'package:beach_club_virtual/config/colors.dart';
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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: AppColors.surface,
        ),
          width: 130,
          height: 200,
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
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ]),
                ),
                Expanded(
                    flex: 1,
                    child: Text(
                      news.subTitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),)
              ],
            ),
          )),
    );
  }
}
