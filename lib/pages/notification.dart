import 'package:flutter/material.dart';
import 'package:eazydriver/Login.dart';
import '../widgets/drawer_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Notification"),
          backgroundColor: Colors.black87,
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (BuildContext context){
                return [
                   PopupMenuItem(
                    child:InkWell(
                      child: Text('Logout'),
                      onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new LoginPage()
                        );
                        Navigator.of(context).push(route);
                      },
                    ),
                    ),
                    PopupMenuItem(
                    child:InkWell(
                      child: Text('Signup'),
                      onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new LoginPage()
                        );
                        Navigator.of(context).push(route);
                      },
                    ),
                    ),
                ];
              },
            ),
          ],
        ),
        drawer: DrawerWidget(),
    );
  }
}