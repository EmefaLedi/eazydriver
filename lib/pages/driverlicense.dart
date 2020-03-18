import 'package:eazydriver/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class DriverLicensePage extends StatelessWidget {
  const DriverLicensePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Driver's License"),
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
    );
  }
}