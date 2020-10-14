import 'dart:async';

import 'package:flutter/material.dart';
import 'package:training1/Screens/page8.dart';
import 'package:training1/Widgets/splash_card.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (Context) {
        return page8();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: card_splash(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return page8();
            }));
          }),
        ),
      ),
    );
  }
}
