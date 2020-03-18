import 'package:eazydriver/main.dart';
import 'package:flutter/material.dart';
import '../pages/profilepage.dart';
import '../pages/driverlicense.dart';
import '../pages/notification.dart';
import '../pages/drivingschools.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Dr Dominic Asamoah"),
                accountEmail: new Text("emefaledi@gmail.com"),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.purpleAccent[100],
                    Colors.deepPurple[300]
                  ]),
                ),
              ),
              new ListTile(
                leading: Icon(Icons.home),
                title: new Text('Home'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute (
                    builder: (BuildContext context) => new MyApp()),
                    );
                },
              ),
              new ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute (
                    builder: (BuildContext context) => new ProfilePage()),
                    );
                },
              ),
              new ListTile(
                leading: Icon(Icons.drive_eta),
                title: Text("New Driver"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute (
                    builder: (BuildContext context) => new DriverLicensePage()),
                    );
                },
              ),
              new ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Old Driver"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute (
                    builder: (BuildContext context) => new DriverLicensePage()),
                    );
                },
              ),
              new ListTile(
                leading: Icon(Icons.drive_eta),
                // trailing: Icon(Icons.drive_eta),
                title: Text("New Vehicle"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new DriverLicensePage()),
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.verified_user),
                title: Text("Old Vehicle"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new DriverLicensePage()),
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.school),
                title: Text("Driving Schools"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new DrivingSchool()),
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.add),
                title: Text("Renewals"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new NotificationPage()),
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.navigation),
                title: Text("Procedures"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new NotificationPage()),
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new NotificationPage()),
                  );
                },
              ),
              new ListTile(
                leading: Icon(Icons.help),
                title: Text("About and Help"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (BuildContext context) => new NotificationPage()),
                  );
                },
              ),
            ],
          )
        );
  }
}