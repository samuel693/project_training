import 'package:flutter/material.dart';
import 'package:training1/Screens/Languages.dart';
import 'package:training1/Widgets/card_setting.dart';

import 'Country.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text(
          "More",
          style: TextStyle(color: Colors.pink.shade900),
        ),
        centerTitle: true,
        elevation: .5,
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 20.0,
          right: 10.0,
          left: 10.0,
        ),
        children: [
          card_setting("Country and City", Icons.flag, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Country();
            }));
          }),
          card_setting("Language", Icons.language, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Languages();
            }));
          }),
          card_setting("Contact Us", Icons.add_call, () {}),
          card_setting("About Us", Icons.info, () {}),
          card_setting("FAQ’ٍS", Icons.bookmark_border, () {}),
          card_setting("How to use this App", Icons.mobile_friendly, () {}),
          card_setting("Terms and Conditions", Icons.event_note_outlined, () {}),
        ],
      ),
    );
  }
}
