import 'package:flutter/material.dart';


class card_splash extends StatefulWidget {

  final ontap;

  card_splash(this.ontap);

  @override
  _card_splashState createState() => _card_splashState();
}

class _card_splashState extends State<card_splash> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: InkWell(
        onTap: widget.ontap,
        child: Container(
          width: 85,
          height: 80,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                height: 20.0,
                width: 20.0,
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/perfume.jfif",fit: BoxFit.cover,),
              ),

              Container(
                alignment: Alignment.centerRight,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ACHATS",style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.pinkAccent.withOpacity(.3)
                    ),),

                    Text("Beauty & Makeup",style: TextStyle(fontSize: 8.0),),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
