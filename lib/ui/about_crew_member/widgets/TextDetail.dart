import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDetail extends StatelessWidget {
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
