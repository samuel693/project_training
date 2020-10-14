import 'package:flutter/material.dart';

class Languages extends StatefulWidget {
  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  var radio1 = 0;
  var radio2 = 1;

  void radioChanged(int value1) {
    setState(() {
      radio1 = value1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: Text(
            "Language",
            style: TextStyle(color: Colors.pink.shade900),
          ),
          centerTitle: true,
          elevation: .5,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RadioListTile(
                value: 0,
                groupValue: radio1,
                onChanged: radioChanged,
                activeColor: Colors.pink.shade900,
                title: Text("English"),
                selected: true,
              ),
              Divider(
                color: Colors.grey.withOpacity(.5),
              ),
              RadioListTile(
                value: 1,
                groupValue: radio1,
                onChanged: radioChanged,
                activeColor: Colors.pink.shade900,
                title: Text("عربي"),
                selected: false,
              ),
            ],
          ),
        ));
  }

  /* Widget radioButton(int val, int groupval, onchanged(), Color color, String text, bool select){
    return RadioListTile(
        value: val,
        groupValue: groupval,
        onChanged:onchanged(),
        activeColor:color,
        title: Text(text),
        selected: select,
    );

*/

}
