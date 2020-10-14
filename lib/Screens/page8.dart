import 'dart:async';

import 'package:easy_dialog/easy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:training1/Widgets/splash_card.dart';

import 'Categories.dart';
import 'Notifications.dart';

class page8 extends StatefulWidget {
  @override
  _page8State createState() => _page8State();
}

class _page8State extends State<page8> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(
            seconds: 0), // you can do your stuff here when splash screen run

        () => _basicContentEasyDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              children: [
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.add_alert),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Notifications();
                      }));
                    },
                  ),
                  //Icon(Icons.add_alert,size: 30,color: Colors.white,)
                ),
                SizedBox(
                  width: 60,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: card_splash(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Categories();
                      }));
                    }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage("assets/add3.jpg"),
                      fit: BoxFit.fill,
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage("assets/add2.jpg"),
                      fit: BoxFit.fill,
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage("assets/add1.jpg"),
                      fit: BoxFit.fill,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _basicContentEasyDialog() {
    return EasyDialog(
        width: 260.0,
        height: 320,
        title: Text(
          "Basic Easy Dialog Title",
          style: TextStyle(fontWeight: FontWeight.bold),
          textScaleFactor: 1.2,
        ),
        description: Text(
          "This is a basic dialog. Easy Dialog helps you easily create basic or custom dialogs.",
          textScaleFactor: 1.1,
          textAlign: TextAlign.center,
        ),
        topImage: AssetImage("assets/add1.jpg"),
        contentList: [
          Container(
            color: Colors.white,
            height: 30,
            width: (MediaQuery.of(context).size.width) * .6,
            alignment: Alignment.center,
            child: new FlatButton(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              textColor: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Categories();
                }));
              },
              child: new Text(
                "Link",
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]).show(context);
  }
}
