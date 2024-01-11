import 'package:beach_club_virtual/core/entity/crew_member.dart';
import 'package:beach_club_virtual/ui/about_crew_member/widgets/TextDetail.dart';
import 'package:beach_club_virtual/ui/about_us/abou_us_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCrewMember extends StatelessWidget {


  final CrewMember crewMember;

  const AboutCrewMember(this.crewMember);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(onPressed: Navigator.of(context).pop,
                icon: Icon(Icons.arrow_back_ios)),
            expandedHeight: 200,
            bottom: PreferredSize(
                child: Center(
                  child: Container(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(crewMember.nickname,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 37,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)
                        )
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(0)),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("boris_valabik.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TextDetail(title: "O mne", context: crewMember.aboutMe),
                TextDetail(title: "Vek", context: crewMember.age.toString()),
                TextDetail(title: "Pozícia", context: crewMember.position),
                TextDetail(title: "Vek", context: crewMember.age.toString()),
                TextDetail(title: "Vek", context: crewMember.age.toString()),
              TextDetail(title: "Vek", context: crewMember.age.toString()),
          TextDetail(title: "Vek", context: crewMember.age.toString()),
              TextDetail(title: "Vek", context: crewMember.age.toString()),
          TextDetail(title: "Vek", context: crewMember.age.toString()),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
                Text("sad"),
                Text("sdw"),
                Text("sdw"),
                Text("sdw"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
