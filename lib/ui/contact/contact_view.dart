import 'package:beach_club_virtual/config/colors.dart';
import 'package:beach_club_virtual/core/entity/contact_info_item.dart';
import 'package:beach_club_virtual/ui/contact/widgets/contact_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../home/home_view.dart';

class ContactPage extends StatelessWidget {
  void showEasterEggToast(String title) {
    Fluttertoast.showToast(
      msg: title,
      fontSize: 12,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundWhite,
        leading: IconButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeView())),
          icon: const ImageIcon(AssetImage('icons/go-back.png'),
              color: Colors.black),
        ),
        title: Container(
          alignment: Alignment.center,

        ),
        actions: [
          IconButton(
              onPressed: () {
                showEasterEggToast("MSR U22 2023 Úžasný Alex Timko 3. miesto.");
              },
              icon: const ImageIcon(
                AssetImage("icons/information.png"),
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                      image: AssetImage("img.png"),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Beachclub Prešov",
                style: TextStyle(
                    fontFamily: "Roboto", fontSize: 25, fontWeight: FontWeight.bold, color: AppColors.primaryTitle),

              ),
              const Text("beachclubpresov@gmail.com"),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    print("NAPIS NAM MAILA");
                  },
                  child: const Text(
                    "Napíš nám",
                    style: TextStyle(
                      color: AppColors.surface
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryContainer,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: AppColors.primaryContainer,
              ),

              //MENU
              ContactDetail(ContactInfoItem(
                  title: "Beachclub Prešov",
                  icon: const ImageIcon(
                    AssetImage("icons/facebook.png"),
                    color: AppColors.primaryContainer,
                  ),
                  onPress: () {
                    print("facebook link");
                  },
                  endIcon: true)),
              ContactDetail(ContactInfoItem(
                  title: "@beachclubpresov",
                  icon: const ImageIcon(
                    AssetImage("icons/instagram.png"),
                    color: AppColors.primaryContainer,
                  ),
                  onPress: () {
                    print("instagram link");
                  },
                  endIcon: true)),
              ContactDetail(ContactInfoItem(title: "BEACHCLUB PREŠOV",
                  icon: const ImageIcon(
                    AssetImage("icons/youtube.png"),
                    color: AppColors.primaryContainer,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: true)),
              const Divider(
                color: AppColors.primaryContainer,
              ),
              ContactDetail(ContactInfoItem(
                  title: "+421 907 489 180",
                  icon: const ImageIcon(
                    AssetImage("icons/24-hours-service.png"),
                    color: AppColors.primaryContainer,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: false)),
              ContactDetail(ContactInfoItem(
                  title: "SDH 3, Prešov",
                  icon: const ImageIcon(
                    AssetImage("icons/location.png"),
                    color: AppColors.primaryContainer,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: false)),
            ])),
      ),
    );
  }
}
