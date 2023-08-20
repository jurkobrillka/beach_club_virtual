import 'package:beach_club_virtual/ui/about_crew_member/about_crew_member.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerInfo extends StatelessWidget {
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
                          builder: (context) => AboutCrewMember())),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        //color: Colors.blue,
                        image: DecorationImage(
                          image: AssetImage("boris_valabik.jpg"),
                          fit: BoxFit.cover,
                        )),
                    width: double.infinity,
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
                          builder: (context) => AboutCrewMember())),
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
