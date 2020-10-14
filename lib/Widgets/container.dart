import 'package:flutter/material.dart';


class container extends StatefulWidget {
  @override
  _containerState createState() => _containerState();

  IconData icon;
  String text;

  container(this.text , this.icon);



}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(widget.icon , size: 20.0, color: Colors.pink.shade900,),
                Padding(padding:EdgeInsets.only(left: 10.0)),
                Text(widget.text,
                  style: TextStyle(fontSize: 12.0, color: Colors.black , decoration: TextDecoration.none),),
              ],
            ),
          ),
          Divider(color: Colors.grey,),



        ],
      ),

    );
  }
}
