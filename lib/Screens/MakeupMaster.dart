import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training1/Widgets/button.dart';
import 'package:training1/Widgets/container.dart';

class MakeupMaster extends StatefulWidget {
  @override
  _MakeupMasterState createState() => _MakeupMasterState();
}

class _MakeupMasterState extends State<MakeupMaster> {
  Color color = Colors.pink.shade900;

  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 10.0,
    decoration: TextDecoration.none,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: 80.0,
            child: AppBar(
              title: Text(
                "Makeup Master",
                style: TextStyle(color: Colors.pink.shade900, fontSize: 20.0),
              ),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 25.0,
                      color: Colors.pink.shade900,
                    ),
                    onPressed: () {}),
              ],
              centerTitle: true,
              backgroundColor: Colors.pink[100],
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(
                top: 100.0,
              ),
              child: Icon(
                Icons.share,
                color: Colors.red,
              )),
          ListView(
            children: [
              SizedBox(
                height: 55,
              ),
              Container(
                alignment: Alignment.center,
                height: 150,
                width: 80,
                child: Image(
                  image: AssetImage("assets/add2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(
                  padding: EdgeInsets.only(left: 20.0),
                  color: Colors.white,
                  child: Text(
                    "Luminous Silk Foundition ",
                    style: TextStyle(
                        color: Colors.pink.shade700,
                        fontSize: 18.0,
                        decoration: TextDecoration.none),
                  )),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Luminous Silk Foundition Silk Foundition \nLuminous Silk Foundition Silk Foundition\nLuminous Silk Foundition Silk Foundition\nLuminous Silk Foundition Silk Foundition\nLuminous Silk Foundition Silk Foundition\nLuminous Silk Foundition Silk Foundition",
                  style: TextStyle(
                    fontSize: 12.0,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                child: Text(
                  "Contacts details",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              container("الرياض - المملكة العربية السعودية", Icons.location_on),
              container("الرياض - 2567", Icons.launch),
              container("011-45677454", Icons.add_call),
              container("011-457876876", Icons.home),
              container("vat@gamil.com", Icons.email_rounded),
              Container(
                padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                child: Text(
                  "Tags",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Row(
                children: [
                  button("New", textStyle, color, 70.0, () {}),
                  button("Makeup", textStyle, color, 80.0, () {}),
                  button("SkinCare", textStyle, color, 100.0, () {}),
                  button("Perfume", textStyle, color, 90.0, () {}),
                ],
              ),
              Row(
                children: [
                  button("New", textStyle, color, 70.0, () {}),
                  button("Makeup", textStyle, color, 80.0, () {}),
                  button("SkinCare", textStyle, color, 100.0, () {}),
                  button("Perfume", textStyle, color, 90.0, () {}),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              button(
                  "Link",
                  TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  Colors.grey,
                  (MediaQuery.of(context).size.width) * .8,
                  () {}),
            ],
          ),
        ],
      ),
    );
  }
}
