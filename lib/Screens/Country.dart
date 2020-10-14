import 'package:flutter/material.dart';
import 'package:training1/Widgets/drop_down_button.dart';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  String dropDownValueCountry = "Saudi Arabia";
  String dropDownValueCity = "Cairo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: .5,
        title: Text(
          "Country",
          style: TextStyle(color: Colors.pink.shade900),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            drop_down_button(
              ['Saudi Arabia', 'Egypt', 'Sudan', 'Kwit'],
              (newValue) {
                setState(() {
                  dropDownValueCountry = newValue;
                });
              },
              'Saudi Arabia',
            ),
            drop_down_button(
              ['Riad', 'Cairo', 'Fayoum', 'Minya'],
              (newValue) {
                setState(() {
                  dropDownValueCity = newValue;
                });
              },
              'Riad',
            ),
          ],
        ),
      ),
    );
  }
}
