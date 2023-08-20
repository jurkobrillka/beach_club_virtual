import 'package:beach_club_virtual/dependency_container.dart';
import 'package:beach_club_virtual/ui/home/widgets/button_news_card.dart';
import 'package:beach_club_virtual/ui/home/widgets/button_sides_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/entity/sides_card_item.dart';
import '../about_us/abou_us_view.dart';
import '../contact/contact_view.dart';
import 'bloc/home_cubit.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {

  late HomeCubit _bloc;
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
    _bloc = di();
    _bloc.fetchData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final double centerPosition =
          _scrollController.position.maxScrollExtent / 2;
      _scrollController.animateTo(centerPosition,
          duration: const Duration(milliseconds: 1000), curve: Curves.ease);
    });
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
                        BlocBuilder<HomeCubit, HomeState>(
                          builder: (context, state) {
                            if (state is HomeLoadingState) {
                              return CircularProgressIndicator();
                            } else if (state is HomeSuccessState) {
                              return Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ButtonNewsCard(state.news[0]),
                                  const SizedBox(width: 10),
                                  ButtonNewsCard(state.news[1])
                                ],
                              );
                            }
                            return Icon(Icons.error);
                          },
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
    ),
);
  }
}
