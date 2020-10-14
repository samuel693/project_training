import 'package:easy_dialog/easy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:training1/Screens/Categories.dart';
import 'package:training1/Widgets/grid_tile_makeup.dart';

class MakeupProducts extends StatefulWidget {
  @override
  _MakeupProductsState createState() => _MakeupProductsState();
}

class _MakeupProductsState extends State<MakeupProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.pink[50],
        title: Text(
          "Products",
          style: TextStyle(
            color: Colors.pink.shade900,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.favorite_border,
            size: 30.0,
            color: Colors.pink.shade900,
          ),
        ],
        elevation: .5,
        brightness: Brightness.light,
        bottom: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(bottom: 15.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
            width: (MediaQuery.of(context).size.width) * .87,
            child: Card(
              color: Colors.pink[100],
              child: TextFormField(
                  autocorrect: true,
                  autofocus: true,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25.0,
                      color: Colors.pink.shade900,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.pink.shade900),
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)
                    // borderSide: BorderSide(color: Colors.pink[100], width: 1.0),)

                    //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))
                  )),
            ),
          ),
        ),
      ),
      body: GridView(
          padding: EdgeInsets.only(right:15.0 , left: 15.0, top: 10.0 , bottom: 10.0),
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/1.jpg",_basicContentEasyDialog),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/2.jpg",(){}),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/3.jpg",(){}),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/4.jpg",(){}),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/5.jpg",(){}),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/6.jpg",(){}),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/7.jpg",(){}),
            grid_tile_makeup("LUMINOS SILK\n\t FOUNDITION", "assets/products/makeup/8.jpg",(){}),






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
          topImage: AssetImage(
              "assets/add1.jpg",),
          contentList: [
            Container(
              color: Colors.white,
              height: 30,
              width: (MediaQuery.of(context).size.width)*.6,
              alignment: Alignment.center,

              child:new FlatButton(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 5.0 ,bottom: 5.0),
                textColor: Colors.red,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Categories();
                  }));
                },
                child: new Text(
                  "Link",textAlign: TextAlign.center,
                ),
              ),

            )
          ]).show(context);
  }








}
