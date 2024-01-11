import 'dart:html';

import 'package:beach_club_virtual/dependency_container.dart';
import 'package:beach_club_virtual/ui/about_us/bloc/about_us_cubit.dart';
import 'package:beach_club_virtual/ui/about_us/widgets/player_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutUsFunctionalView extends StatefulWidget {
  const AboutUsFunctionalView({super.key});

  @override
  State<AboutUsFunctionalView> createState() => _AboutUsFunctionalViewState();
}

class _AboutUsFunctionalViewState extends State<AboutUsFunctionalView> {
  late AboutUsCubit _bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc = di();
    _bloc.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: Navigator.of(context).pop,),
              expandedHeight: 200,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Container(
                  width: double.maxFinite,
                  child: SizedBox(height: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      )
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                    "assets/AlexPlatz.JPG",
                  width: double.maxFinite,
                  fit: BoxFit.cover,

                ),
              ),
            ),
            SliverToBoxAdapter(
                child:
                    BlocBuilder<AboutUsCubit, AboutUsState>(
                      builder: (context, state) {
                        if(state is AboutUsLoadingState){
                          return Center(
                            child: Container(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator()),
                          );
                        } else if (state is AboutUsSuccessState){
                          print("BUild");
                          return
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.crewMembers.length,
                              itemBuilder: (context, index) => PlayerInfo(
                                state.crewMembers[index]
                              ),
                            );//
                        }
                        else{
                          return Icon(Icons.error);
                        }
                      },
                    ),
                    //PlayerInfo(),



            )
          ],
        ),
      ),
    );
  }
}
