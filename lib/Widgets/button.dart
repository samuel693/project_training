import 'package:flutter/material.dart';
import 'package:training1/Widgets/container.dart';



class button extends StatefulWidget {
  Color color;
  final onpressed;
  String text;
  TextStyle textstyle;
  double width;

   button( this.text , this.textstyle ,  this.color , this.width , this.onpressed);


  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      padding: EdgeInsets.only(left: 5.0, right: 5.0,),
      child: RaisedButton(
        color: widget.color,
        onPressed: widget.onpressed,

        child: Text(widget.text , style: widget.textstyle,),

      ),
    );
  }
}
