import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/drawer_navigation.dart';

class ProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: DrawerNavigation(),
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            width: double.infinity,
            height: 220,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 29),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://lh3.googleusercontent.com/ogw/ADGmqu-AJEkWz4lU-scPTtPIaDN59_euX7rshyZ3xhWo=s83-c-mo",)
                    )
                  ),
                  width: 110,
                  height: 100,
                ),
                Text("Abhishek Sharma", style: TextStyle(color: Colors.deepOrange, fontSize: 22),),
                SizedBox(height: 9,),
                FlatButton(
                  color: Colors.white,
                    onPressed: (){},
                    child: Text("Edit Profile", style: TextStyle(color: Colors.orangeAccent),)
                )
              ],
            ),
          ),
          SizedBox(height: 19,),
          _buildTF("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", "Location"),
          _buildTF("xxxxxx", "Pincode"),
          _buildTF("dd-mm-yy", "Date of Birth"),
          _buildTF("Male", "Gender"),
          _buildTF("+91 -xxxxxxxx", "Whatsapp"),
          _buildTF("xxxxxx@gmail.com", "Email"),
        ],
      )
    );
  }
}

Widget _buildTF(String hintText, String labelText){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 39),

      child: TextField(
        maxLines: 2,
        decoration: InputDecoration(
          hintMaxLines: 2,
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(color: Colors.black),
          contentPadding: EdgeInsets.symmetric(horizontal: 7)
        ),
      ),

  );
}
