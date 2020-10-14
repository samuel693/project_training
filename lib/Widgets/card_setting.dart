import 'package:flutter/material.dart';


class card_setting extends StatefulWidget {

  String textTitle;
  IconData icon;
  final ontap;

  card_setting(this.textTitle , this.icon , this.ontap );

  @override
  _card_settingState createState() => _card_settingState();
}

class _card_settingState extends State<card_setting> {

  TextStyle _titleStyle = TextStyle(
    color: Colors.black,
    fontSize: 18.0,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: widget.ontap,
        child: ListTile(
          leading: Icon(widget.icon,size: 30,color: Colors.pinkAccent.shade100,),
          title: Text(widget.textTitle,style: _titleStyle,),
        ),
      ),
    );

  }
}
