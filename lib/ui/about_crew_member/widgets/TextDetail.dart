import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDetail extends StatelessWidget {

  final String title;
  final String context;

  const TextDetail({required this.title,required this.context});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
              ),
            ),
            Text(this.context,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
