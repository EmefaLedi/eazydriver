import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';

class DrivingSchool extends StatelessWidget {
  const DrivingSchool({Key key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Driving Schools"),
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
  //  const ListTiles =  <Widget>[
  //     ListTile(
  //       title: Text('Driving school 1'),
  //     ),
  //     Divider(),
  //     ListTile(
  //       title: Text('Driving school 2')
  //     ),
      
  //   ];
  //   return ListView( children: ListTiles);
  // }