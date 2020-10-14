import 'package:flutter/material.dart';


class card_category extends StatefulWidget {

  String imageBg;
  String imageCategory;
  String text;
  final ontap;

  card_category(this.imageBg , this.imageCategory , this.text ,this.ontap );

  @override
  _card_categoryState createState() => _card_categoryState();
}

class _card_categoryState extends State<card_category> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        width: (MediaQuery.of(context).size.width)*.87,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.imageBg),
                fit: BoxFit.cover
            )
        ),
        height: 120.0,
        child: InkWell(
          onTap: widget.ontap,
          child: Row(
            children: [
              Image.asset(widget.imageCategory),
              Text(widget.text,style: TextStyle(fontSize: 25.0 , color: Colors.black),)
            ],
          ),
        ),
      ),
    );


  }
}
