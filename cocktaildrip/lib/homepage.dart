import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> titles = [
    "Nach Namen\nsuchen",
    "Nach Zutaten\nsuchen",
    "Nach ID\nsuchen",
    "Zufällig"
  ];

  final List<Widget> images = [
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/cocktail1.jpg",
          fit: BoxFit.cover,
          height: 50,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/ingrediants1.jpg",
          fit: BoxFit.cover,
          height: 50,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/menu.jpg",
          fit: BoxFit.cover,
          height: 50,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/dice.jpg",
          fit: BoxFit.cover,
          height: 50,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/cocktail2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: VerticalCardPager(
                  titles: titles, // required
                  images: images, // required
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), // optional
                  onPageChanged: (page) {
                    // optional
                  },
                  onSelectedItem: (index) {
                    // optional
                  },
                  initialPage: 0,
                  align: ALIGN.CENTER,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
