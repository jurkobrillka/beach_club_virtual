import 'package:flutter/cupertino.dart';

class CourtWidget extends StatelessWidget{

  final int number;


  CourtWidget(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello world"),
    );
  }

}