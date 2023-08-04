

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Center(
    child: FirstIdeas(),
  ))); //running the app and we are passing ROOT WIDGET
}

class TestContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[100],
        child: Text("Hello"),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        margin: EdgeInsets.all(40),
      ),
    );
  }
}

class RowsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Text("tsest"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextButton(
              onPressed: () {
                print("Butt row");
              },
              child: Text("Click butt in row",
                  style: TextStyle(fontSize: 10, color: Colors.green)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            color: Colors.purple[100],
            child: Text("Inside cont"),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Karta 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16), // Medzera medzi kartami
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Karta 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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

class SidesCardItem{
  final String urlImage;
  final String title;
  final String subtitle;

  const SidesCardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle
});
}

class FirstIdeas extends StatefulWidget {
  @override
  _FirstIdeasTest createState() => _FirstIdeasTest();
}

class _FirstIdeasTest extends State<FirstIdeas> {
  ScrollController _scrollController = ScrollController();

  List<SidesCardItem> sidesCardItems = [
    SidesCardItem(
      urlImage:'icons/search.png',
      title:'O nás',
      subtitle: 'Kto sme?'
    ),
    SidesCardItem(
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
          duration: Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(
                    left: 24, bottom: 10, right: 24, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Virtuálny",
                        style: TextStyle(
                          fontSize: 48,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "BeachClub Prešov",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
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
                        SizedBox(
                          width: 12,
                        ),
                        ButtonSidesCard(item: sidesCardItems[0]),
                        SizedBox(
                          width: 12,
                        ),
                        ButtonNewsCard(),
                        SizedBox(
                          width: 12,
                        ),
                        ButtonNewsCard(),
                        SizedBox(
                          width: 12,
                        ),
                        ButtonSidesCard(item: sidesCardItems[1]),
                        SizedBox(
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

class ButtonNewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
            border: Border.all(
                color: Colors.black,
                width: 1
            ),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
              blurRadius: 4,
              spreadRadius: 0.0,
              offset: Offset(
                6.0,
                  4.0
              )
            )
          ]
        ),
          width: 150,
          height: 200,
          //color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                          fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
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
                      style: TextStyle(
                        fontSize: 12,
                          fontWeight: FontWeight.w300
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}

Widget ButtonSidesCard({required SidesCardItem item}) =>
    Padding(
        padding: EdgeInsets.only(top: 10,bottom: 10),
      child: Container(
          width: 130,
          height: 200,
          //color: Colors.green,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 0.0,
                    offset: Offset(
                        6.0,
                        4.0
                    )
                )
              ]
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
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
//testik vymaz
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                          children: [
                            Text(item.title,
                              style: TextStyle(
                                fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(item.subtitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12)
                              ,)

                          ]
                      )
                  ),
                )
              ],
            ),
          )),
    );

/*class ButtonSidesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          width: 130,
          height: 200,
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    //padding: EdgeInsets.only(top: 15,right: 15,left: 15),
                    child: Image.asset('icons/search.png'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                     padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Text("O nás",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                        ),
                          Text("Kto sme?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12)
                            ,)

                        ]
                      )
                  ),
                )
              ],
            ),
          )),
    );
  }
}*/

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ExpandedWidgetsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Row(
      children: <Widget>[
        Expanded(flex: 2, child: Image.asset('AlexPlatz.jpg')),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text("k1"),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.lightBlueAccent,
            child: Text("d2"),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Text("3"),
          ),
        )
      ],
    )));
  }
}

class ColumntTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            child: Text("one"),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.cyan,
            child: Text("two"),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.green,
            child: Text("three"),
          ),
        ],
      ),
    );
  }
}

class TestPaddAndMarg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Hello columnPadding"),
          ),
        ],
      ),
    );
  }
}

class TestMyOwn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Hello my own txt",
              style: TextStyle(
                letterSpacing: 5,
                fontSize: 35,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed: () {
                print("Hello IconButton");
              },
              icon: Icon(Icons.ac_unit_sharp),
            ),
          ],
        ),
      ),
    );
  }
}

class TestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: Column(
        children: <Widget>[
          Image.asset(
            'AlexPlatz.JPG',
            width: 50,
            height: 26,
          ),
          Icon(
            Icons.accessible_forward_sharp,
            color: Colors.orange,
            size: 100,
          ),
          IconButton(
            onPressed: () {
              print("Hello butt");
            },
            icon: Icon(Icons.accessible),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello click");
        },
        child: Column(children: <Widget>[
          Text('Click me gigi',
              style: TextStyle(
                  fontFamily: 'Roboto-LightItalic',
                  fontSize: 12,
                  color: Colors.black)),
          Text("data"),
        ]),
        backgroundColor: Colors.limeAccent,
      ),
    );
  }
}
