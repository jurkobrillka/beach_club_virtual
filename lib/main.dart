
import 'package:beach_club_virtual/ui/home/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';
import 'firebase_options.dart';
import 'dependency_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initDependencies();
  runApp(MaterialApp(
    theme: lightTheme,
      home: Center(
    child: HomeView(),
  ))); //running the app and we are passing ROOT WIDGET
}

/*
class SidesCardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const SidesCardItem(
      {required this.urlImage, required this.title, required this.subtitle});
}

class FirstIdeas extends StatefulWidget {
  @override
  _FirstIdeasTest createState() => _FirstIdeasTest();
}

class _FirstIdeasTest extends State<FirstIdeas> {
  ScrollController _scrollController = ScrollController();

  List<SidesCardItem> sidesCardItems = [
    const SidesCardItem(
        urlImage: 'icons/search.png', title: 'O nás', subtitle: 'Kto sme?'),
    const SidesCardItem(
        urlImage: 'icons/online-support.png',
        title: "Kontakt",
        subtitle: "Napíš nám ;)")
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final double centerPosition =
          _scrollController.position.maxScrollExtent / 2;
      _scrollController.animateTo(centerPosition,
          duration: const Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.lightBlue, // Light blue color for the bottom 75%
              Colors.white, // White color from bottom 75% to top
            ],
            stops: [0.60, 0.60], // Stops at 75% from bottom
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 24, bottom: 10, right: 24, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Virtuálny",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "BeachClub Prešov",
                        style: Theme.of(context).textTheme.labelMedium //TODO TU JE TO IMPORTANT POZOR!!!
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  //color: Colors.lightBlueAccent,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      //dragStartBehavior: DragStartBehavior.start,
                      controller: _scrollController,
                      child: Row(children: [
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUsView())),
                            child: ButtonSidesCard(item: sidesCardItems[0])),
                        const SizedBox(
                          width: 12,
                        ),
                        ButtonNewsCard(),
                        const SizedBox(
                          width: 12,
                        ),
                        ButtonNewsCard(),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ContactPage())),
                            child: ButtonSidesCard(item: sidesCardItems[1])),
                        const SizedBox(
                          width: 12,
                        ),
                      ])),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  color: Colors.lightBlueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/

/*
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
              ContactMenuWidget(
                  title: "Beachclub Prešov",
                  icon: const ImageIcon(
                    AssetImage("icons/facebook.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("facebook link");
                  },
                  endIcon: true),
              ContactMenuWidget(
                  title: "@beachclubpresov",
                  icon: const ImageIcon(
                    AssetImage("icons/instagram.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("instagram link");
                  },
                  endIcon: true),
              ContactMenuWidget(
                  title: "BEACHCLUB PREŠOV",
                  icon: const ImageIcon(
                    AssetImage("icons/youtube.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: true),
              const Divider(),
              ContactMenuWidget(
                  title: "+421 907 489 180",
                  icon: const ImageIcon(
                    AssetImage("icons/24-hours-service.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: false),
              ContactMenuWidget(
                  title: "SDH 3, Prešov",
                  icon: const ImageIcon(
                    AssetImage("icons/location.png"),
                    color: Colors.blue,
                  ),
                  onPress: () {
                    print("youtube linkk");
                  },
                  endIcon: false),
            ])),
      ),
    );
  }
}
*/

/*
class AboutPersonaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfilePage(),
    );
  }
}
*/

/*
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("boris_valabik.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                              color: Colors.transparent,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: IconButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AboutUsPage(),
                                    ),
                                  ),
                                  icon: const ImageIcon(
                                      AssetImage("icons/go-back.png")),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                              color: Colors.transparent, //Color(0xffDDDDDD),
                              child: Column(
                                children: <Widget>[
                                  AboutMeText(),
                                  const Divider(),
                                  AboutMeText(),
                                  const Divider(),
                                  AboutMeText(),
                                  const Divider(),
                                  AboutMeText(),
                                  const Divider(),
                                  AboutMeText(),
                                  const Divider(),
                                  AboutMeText(),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width - 180) / 2,
              top: (((MediaQuery.of(context).size.height) / 10) * 3) - 40,
              child: Container(
                width: 180,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "Borisko",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
class AboutMeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: const ImageIcon(
                      AssetImage("icons/youtube.png"),
                      color: Colors.blue,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "O mne",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "som najlepsi na svete parada amerika hole baby ujupi jou",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
class AboutUsPage extends StatelessWidget {
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
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FirstIdeas())),
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
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      CustomWidget(),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomWidget(),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomWidget(),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomWidget(),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomWidget(),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomWidget(),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
*/

/*
class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: 130,
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutPersonaPage())),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        //color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage("boris_valabik.jpg"),
                          fit: BoxFit.cover,
                        )),
                    // Farba vertikálneho obdĺžnika
                    width: double.infinity, // 1/3 šírky obrazovky
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutPersonaPage())),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0, // Soften the shaodw
                          spreadRadius: 2.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ],
                    ),
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BoroBejk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue[900],
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Sexsymbol",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const Text(
                            "32 rokov",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
class ContactMenuWidget extends StatelessWidget {
  const ContactMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.endIcon,
  });

  final String title;
  final ImageIcon icon;
  final VoidCallback onPress;
  final bool endIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.cyan.withOpacity(0.1),
          ),
          child: icon,
        ),
        title: Text(title),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueGrey.withOpacity(0.1)),
                child: const Icon(
                  Icons.arrow_right,
                  color: Colors.grey,
                ),
              )
            : null);
  }
}

*/
/*
cla*ss ButtonNewsCard extends StatelessWidget {
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
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                          "Vyhravame v Ziline",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "12.6.2002",
                          style: TextStyle(fontSize: 12),
                        ),
                      ]),
                ),
                Expanded(
                    flex: 1,
                    child: Text(
                      "a tu bude dajaky dlhy text tory bude mat maximalne tak 48 znakov  ata akoze...",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ))
              ],
            ),
          )),
    );
  }
}

Widget ButtonSidesCard({required SidesCardItem item}) => Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
          width: 130,
          height: 200,
          //color: Colors.green,
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
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    //padding: EdgeInsets.only(top: 15,right: 15,left: 15),
                    alignment: Alignment.center,
                    child: Image.asset(item.urlImage),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          item.subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                        )
                      ])),
                )
              ],
            ),
          )),
    );
*/