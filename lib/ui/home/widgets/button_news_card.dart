import 'package:beach_club_virtual/config/colors.dart';
import 'package:beach_club_virtual/config/constants.dart';
import 'package:beach_club_virtual/core/entity/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonNewsCard extends StatelessWidget {
  final News news;
  const ButtonNewsCard(this.news);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:ELEVATION,
      child: Container(
        //width: 180,
        //height: 300,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColors.elevatedCardSurface,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                //padding: EdgeInsets.only(top: 15,right: 15,left: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  //color: AppColors.elevatedCardSurface,
                  color: AppColors.elevatedCardSurface,
                ),
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.asset(
                    news.imageUrl,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news.title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.primaryTitle
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      news.content, //TODO POZOR Tu dat news.dateTime a toto extensions nech zmeni na cisty datumik
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*
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
*/
}

