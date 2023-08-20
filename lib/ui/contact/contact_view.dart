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
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeView())),
          icon: const ImageIcon(AssetImage('icons/go-back.png'),
              color: Colors.black),
        ),
        title: Container(
          alignment: Alignment.center,
          child: const Text(
            "Kontakt",
            style: TextStyle(
                color: Colors.black, fontFamily: "fonts/Roboto-LightItalic"),
          ),
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
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text("beachclubpresov@gmail.com"),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    print("NAPIS NAM MAILA");
                  },
                  child: const Text("Napíš nám"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),

              //MENU
              ContactDetail(ContactInfoItem(
                  title: "Beachclub Prešov",
                  icon: const ImageIcon(
                    AssetImage("icons/facebook.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("facebook link");
                  },
                  endIcon: true)),
              ContactDetail(ContactInfoItem(
                  title: "@beachclubpresov",
                  icon: const ImageIcon(
                    AssetImage("icons/instagram.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("instagram link");
                  },
                  endIcon: true)),
              ContactDetail(ContactInfoItem(title: "BEACHCLUB PREŠOV",
                  icon: const ImageIcon(
                    AssetImage("icons/youtube.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: true)),
              const Divider(),
              ContactDetail(ContactInfoItem(
                  title: "+421 907 489 180",
                  icon: const ImageIcon(
                    AssetImage("icons/24-hours-service.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: false)),
              ContactDetail(ContactInfoItem(
                  title: "SDH 3, Prešov",
                  icon: const ImageIcon(
                    AssetImage("icons/location.png"),
                    color: Colors.blue,
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
