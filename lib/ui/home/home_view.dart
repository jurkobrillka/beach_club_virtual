import 'package:beach_club_virtual/dependency_container.dart';
import 'package:beach_club_virtual/ui/home/widgets/button_news_card.dart';
import 'package:beach_club_virtual/ui/home/widgets/button_sides_card.dart';
import 'package:beach_club_virtual/ui/home/widgets/button_vertical_card.dart';
import 'package:beach_club_virtual/ui/reservation/choosing_court/courts_view_widget.dart';
import 'package:beach_club_virtual/ui/reservation/reservation_template_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/colors.dart';
import '../../core/entity/sides_card_item.dart';
import '../about_us/abou_us_view.dart';
import '../about_us/about_us_functional_view.dart';
import '../contact/contact_view.dart';
import 'bloc/home_cubit.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  late HomeCubit _bloc;


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
    _bloc = di();
    _bloc.fetchData();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                //Colors.lightBlue, // Light blue color for the bottom 75%
                AppColors.primaryContainer,
                AppColors.backgroundWhite, // White color from bottom 75% to top
              ],
              stops: [0.00, 0.00], // Stops at 75% from bottom
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
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Virtuálny",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("BeachClub Prešov",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall //TODO TU JE TO IMPORTANT POZOR!!!
                            ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 24),
                  child: Container(
                    child: Center(
                      child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (context, state) {
                          if (state is HomeLoadingState) {
                            return CircularProgressIndicator();
                          } else if (state is HomeSuccessState) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 24, right: 2),
                                    child: InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AboutUsFunctionalView())),
                                        child: ButtonNewsCard(state.news[0])),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 2, right: 24),
                                    child: InkWell(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AboutUsFunctionalView())),
                                        child: ButtonNewsCard(state.news[1])),
                                  ),
                                ),
                                //const SizedBox(width: 10)
                              ],
                            );
                          }
                          return Icon(Icons.error);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.0, right: 24, bottom: 0),
                  child: ListView(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReservationTeplateView(
                                      "Vyber si \nihrisko",
                                      CourtsViewWidget()))),
                          //TODO ZMENIT CESTU NA REZERVACIE PAGE
                          child: ButtonVerticalCard("Rezervácie",
                              "Rezervuj si ihrisko", "Tu a teraz!"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ContactPage())),
                          //TODO PREJST NA O NAS PAGE => HOTOVO HEHE
                          child: ButtonVerticalCard("Kto je BeachClub?",
                              "Spoznaj nás bližšie", "Kontakt"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AboutUsFunctionalView())),
                          //TODO ZMENIT CESTU NA REZERVACIE PAGE
                          /*onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AboutUsFunctionalView())),*/
                          child: ButtonVerticalCard(
                              "Aktuality", "Čo sa u nás deje?", "Novinky"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReservationTeplateView(
                                      "Vyber si \nihrisko",
                                      CourtsViewWidget()))),
                          //TODO ZMENIT CESTU NA REZERVACIE PAGE
                          child: ButtonVerticalCard(
                              "Moje Konto", "user.name?", "Nastavenia"),
                        ),
                      ),
                      //ButtonVerticalCard("tle", "sube", "nfo"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
