import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class ButtonVerticalCard extends StatelessWidget{

  final String title;
  final String subTitle;
  final String additionalInfo;

  const ButtonVerticalCard(this.title, this.subTitle, this.additionalInfo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 3,
      child: Container(
        width: double.infinity,
        //height: 280,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColors.elevatedCardSurface,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top:10, left: 10),
                child: Container(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top:5, left: 10),
              child: Container(
                child: Text(
                    subTitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom:10, right: 10),
                child: Container(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        color: AppColors.primaryContainer
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                        child: Text(
                          additionalInfo,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.onBlueCardTitle)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


}