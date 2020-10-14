import 'package:flutter/material.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  TextStyle _title = TextStyle(
    fontSize: 18.0,
    color: Colors.black,
  );

  TextStyle _subTitle = TextStyle(
    fontSize: 15.0,
    color: Colors.grey,
  );

  Icon _notifiIcon = Icon(Icons.add_alert, size: 30.0,color: Colors.pink.shade900,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        elevation: .5,
        title: Text("More",style: TextStyle(color: Colors.pink.shade900),),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.only(top:20.0 , left: 10.0, right: 10.0),
        children: [
          Card(
            color: Colors.white,
            child: InkWell(onTap: (){

            },
              child: ListTile(
                leading: _notifiIcon,
                title: Text("There’s new discount",style: _title,),
                subtitle: Text("20/8/2019",style: _subTitle,),
              ),
            ),
          ),


          Card(
            color: Colors.white,
            child: InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: _notifiIcon,
                title: Text("There’s new add",style: _title,),
                subtitle: Text("20/8/2019",style: _subTitle,),
              ),
            ),
          ),


          Card(
            color: Colors.white,
            child: InkWell(
              child: ListTile(
                leading: _notifiIcon,
                title: Text("There’s new shops have a look now",style: _title,),
                subtitle: Text("20/8/2019",style: _subTitle,),
              ),
            ),
          ),


          Card(
            color: Colors.white,
            child: InkWell(
              child: ListTile(
                leading: _notifiIcon,
                title: Text("There’s new add",style: _title,),
                subtitle: Text("20/8/2019",style: _subTitle,),
              ),
            ),
          ),

        ],

      ),
    );
  }
}
