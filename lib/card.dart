import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  final String image;
  final String heading;
  final String content;
  final String date;
  //final IconData icon;

  Cards(this.image, this.heading, this.content, this.date, );

  static const HeadingStyle = TextStyle(fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 120,
          ),

         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               margin: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
               width: 100,
               height: 100,
               decoration: BoxDecoration(
                   color: Colors.black26,
                 //border: Border.all(color: Colors.grey),
                 borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(image: AssetImage(image),
                 fit: BoxFit.fitHeight,
                 ),
               ),
             ),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.only(top: 8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(heading, style: HeadingStyle),
                       SizedBox(height: 4,),
                       Text(content),
                       SizedBox(height: 9,),
                       Row(
                         children: [
                           Icon(Icons.calendar_today, size: 16,),
                           SizedBox(width: 3,),
                           Text(date),
                           SizedBox(width: 6,),
                           Container(
                             padding: EdgeInsets.symmetric(horizontal: 19, vertical: 2),
                             decoration: BoxDecoration(
                               color: Colors.deepOrange
                             ),
                             child: Text("Sports",
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                             ),
                             ),
                           ),
                           SizedBox(width: 14,),
                           Icon(Icons.bookmark_border_outlined)
                         ],
                       )
                     ],
                   ),

               ),
             ),
           ],
         ),
        ],
      ),
    );
  }
}
