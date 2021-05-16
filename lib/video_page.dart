import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/card.dart';
import 'package:task/drawer_navigation.dart';



class VideosPage extends StatefulWidget {


  @override
  _VideosPageState createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: DrawerNavigation(),
      appBar: AppBar(),
      body:  Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 9),
            height: 49,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: .5
                )
              ]
            ),
            child: Text("Videos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 18,),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayerPlaylist(
                betterPlayerConfiguration: BetterPlayerConfiguration(),
                betterPlayerPlaylistConfiguration:  BetterPlayerPlaylistConfiguration(),
                betterPlayerDataSourceList: createDataSet()
            ),
          ),
          Expanded(//height: 199,
            child: ListView(
              children:[
              Cards(
                  'assets/images/1.jpg',
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
                    'assets/images/1.jpg',
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
                    'assets/images/1.jpg',
                    "This is Heading of the realte newws this is and go on",
                    "This is Heading of the realted new was this is anotherHeading of the",
                    "03-03-2021"
                ),
              ]
            ),
          )
        ],
      ),

    );
  }
}

List<BetterPlayerDataSource> createDataSet() {
  List dataSourceList = List<BetterPlayerDataSource>();
  dataSourceList.add(
    BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    ),
  );
  dataSourceList.add(
    BetterPlayerDataSource(BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
  );
  dataSourceList.add(
    BetterPlayerDataSource(BetterPlayerDataSourceType.network,
        "http://sample.vodobox.com/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8"),
  );
  return dataSourceList;
}