import 'package:flutter/material.dart';


class grid_tile_makeup extends StatefulWidget {

  String description_text;
  String image_name;
  final ontap;

  grid_tile_makeup(this.description_text , this.image_name , this.ontap());

  @override
  _grid_tile_makeupState createState() => _grid_tile_makeupState();
}

class _grid_tile_makeupState extends State<grid_tile_makeup> {
  @override
  Widget build(BuildContext context) {
        return GridTile(
      child: Card(
        color: Colors.white,
        child: InkWell(
          onTap: widget.ontap,
          child: Container(
            height: 150.0,
            width: 100,
            child: Column(
              children: [
                Container(
                  height: 110,
                  width: 200.0,
                  child: Image.asset(
                    widget.image_name,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  //alignment: Alignment.center,
                  height: 40.0,
                  width: 100,
                  child: Text(
                    widget.description_text,
                    style: TextStyle(
                      color: Colors.pink.shade900,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

