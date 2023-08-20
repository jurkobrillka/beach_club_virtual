import 'package:beach_club_virtual/ui/about_crew_member/widgets/TextDetail.dart';
import 'package:beach_club_virtual/ui/about_us/abou_us_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCrewMember extends StatelessWidget {
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
                                      builder: (context) => AboutUsView(),
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
                                  TextDetail(),
                                  const Divider(),
                                  TextDetail(),
                                  const Divider(),
                                  TextDetail(),
                                  const Divider(),
                                  TextDetail(),
                                  const Divider(),
                                  TextDetail(),
                                  const Divider(),
                                  TextDetail(),
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
