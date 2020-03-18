import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class Procedures extends StatelessWidget {
  const Procedures({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Procedures"),
          backgroundColor: Colors.black87,
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (BuildContext context){
                return [
                  PopupMenuItem(child: Text('Logout')),
                  PopupMenuItem(child: Text('SignUp')),
                ];
              },
            ),
          ],
        ),
        drawer: DrawerWidget(),
        body: Text("hi emefa ledi yaa"),
        
    );
  }
}