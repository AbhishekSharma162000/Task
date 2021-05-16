import 'package:flutter/material.dart';
import 'package:task/card.dart';
import 'package:task/drawer_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          Cards(
              'assets/images/1.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
          Cards(
              'assets/images/2.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
          Cards(
              'assets/images/3.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
          Cards(
              'assets/images/1.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
          Cards(
              'assets/images/2.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
          Cards(
              'assets/images/3.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
          Cards(
              'assets/images/1.jpg',
              "This is Heading of the realte newws this is and go on",
              "This is Heading of the realted new was this is anotherHeading of the",
              "03-03-2021"
          ),
        ],
      ),
    );
  }
}
