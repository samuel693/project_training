import 'package:easy_dialog/easy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:training1/Screens/MakeupProducts.dart';
import 'package:training1/Screens/Setting.dart';
import 'package:training1/Widgets/card_category.dart';
import 'package:training1/Widgets/splash_card.dart';

import 'Notifications.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
            child:Row(
              children: [
                SizedBox(width: 40.0,),
                Container(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(Icons.add_alert),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Notifications();
                        }));
                      },
                    ),
                    //Icon(Icons.add_alert,size: 30,color: Colors.white,)

                ),

                SizedBox(width: 60,),

                Center(
                  child: InkWell(

                    onTap: (){

                    }
                    ,child: card_splash((){}),
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
                Container(width: MediaQuery.of(context).size.width,
                     child: Image(image: AssetImage("assets/add3.jpg"),fit: BoxFit.fill,)),

                Container(width: MediaQuery.of(context).size.width,
                    child: Image(image: AssetImage("assets/add2.jpg"),fit: BoxFit.fill,)),

                Container(width: MediaQuery.of(context).size.width,
                    child: Image(image: AssetImage("assets/add1.jpg"),fit: BoxFit.fill,)),
              ],
            ),
          ),




          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0 , right: 20.0)),

             card_category("assets/category/categorybg.jpg", "assets/category/makeup3.jpg", "Makeup", (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return MakeupProducts();
               }));
             }),


              card_category("assets/category/categorybg.jpg", "assets/category/perfume.jpg", "Perfume", (){

              }),


            ],
          ),

        ],
      ),



      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),

        child: BottomNavigationBar(

          backgroundColor: Colors.pinkAccent[100],
          items: [
            BottomNavigationBarItem(
              label: 'More',
              icon: IconButton(
                icon: Icon(Icons.more_horiz,color: Colors.white,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Setting();
                  }));
                },
              ),
            ),

            BottomNavigationBarItem(
                label: 'Description',
                icon: IconButton(
                  icon: Icon(Icons.description,color: Colors.white,),
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context){return Setting();}));
                  },
                )),

            BottomNavigationBarItem(
                label: 'Favourite',
                icon: IconButton(
                  icon: Icon(Icons.favorite_border,color: Colors.white,),
                  onPressed: _basicContentEasyDialog,
                )),

          ],
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white,


        ),
      ),



    );
  }






  void _basicContentEasyDialog() {
    Container(
      height: 320,
      width: 250,
      child:EasyDialog(
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
              "assets/add1.jpg"),
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
                  Navigator.of(context).pop();
                },
                child: new Text(
                  "Link",textAlign: TextAlign.center,
                ),
              ),

            )
          ]).show(context),
    );
  }












}
