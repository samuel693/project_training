import 'package:flutter/material.dart';


class drop_down_button extends StatefulWidget {

   List<String> items;
   void on_changed;
   String  initialValue;


   drop_down_button(this.items , this.on_changed , this.initialValue );



  @override
  _drop_down_buttonState createState() => _drop_down_buttonState();
}

class _drop_down_buttonState extends State<drop_down_button> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          color: Colors.white60,
          alignment: Alignment.center,
          width: (MediaQuery.of(context).size.width)*.8,
          margin: EdgeInsets.only(top:20.0,left: 40, right: 40,),
          child:Center(
            child: DropdownButton<String>(
              value: widget.initialValue,
              icon: Icon(Icons.arrow_drop_down_sharp,size: 15,),
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container( color: Colors.white,),
              onChanged:(newvalue){
                setState(() {
                  widget.initialValue=newvalue;
                });
              },
              items: widget.items.map(
                  (item)=>DropdownMenuItem(
                      child: Text(item),
                      value:item ,
                  )
              ).toList()


            ),
          )

      );
  }
}
