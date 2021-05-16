import 'package:flutter/material.dart';
import 'package:task/home_page.dart';
import 'package:task/profile_page.dart';
import 'package:task/video_page.dart';

class DrawerNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,

              width: double.infinity,
              child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      width: 60,
                      height: 100,
                      // decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     image: DecorationImage(
                      //         image: NetworkImage("https://lh3.googleusercontent.com/ogw/ADGmqu-AJEkWz4lU-scPTtPIaDN59_euX7rshyZ3xhWo=s83-c-mo")
                      //     )
                      // ),
                    ),
                    // Text(
                    //   "Abhishek Sharma",
                    //   style: TextStyle(
                    //       fontSize: 20,
                    //       color: Colors.white
                    //   ),
                    // )
                  ]
              ),
            ),
            ListTile(
              title: Text("Home", style: TextStyle(fontSize: 19),),
              leading: Icon(Icons.home),
              onTap: (){
               Navigator.push(context, MaterialPageRoute(
                   builder: (context) => HomePage()
               ));
              },
            ),

            Divider(height: 19, thickness: 2,),

            ListTile(
              title: Text("Videos", style: TextStyle(fontSize: 19),),
              leading: Icon(Icons.video_library ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => VideosPage()
                ));
              },
            ),

            Divider(height: 19, thickness: 2,),
            ListTile(
              title: Text("Profile", style: TextStyle(fontSize: 19),),
              leading: Icon(Icons.account_circle_rounded ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ProfilePage()
                ));
              },
            ),

          ],
        ),
      ),
    );
  }
}


