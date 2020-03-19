import 'package:eazydriver/Login.dart';
import 'package:eazydriver/pages/signup.dart';
import 'package:flutter/material.dart';
import './Login.dart';
import './widgets/drawer_widget.dart';

void main() => runApp(MaterialApp(
      home: MySplash(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Easy Driver',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Easy Driver"),
            backgroundColor: Colors.black87,
            actions: <Widget>[
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: InkWell(
                        child: Text('Logout'),
                        onTap: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new LoginPage());
                          Navigator.of(context).push(route);
                        },
                      ),
                    ),
                    PopupMenuItem(
                      child: InkWell(
                        child: Text('SignUp'),
                        onTap: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new LoginPage());
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
          body: Column(children: <Widget>[
            Column(children: <Widget>[
              Container(
                width: 500,
                height: 300,
                child: Image(
                    image: AssetImage('images/emefa.jpg'), fit: BoxFit.fill),
              ),
            ]),
            // Padding(
            //padding: EdgeInsets.only(top: 10.0),
            // ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // SizedBox(
                    //width: 30,
                    //),
                    Column(children: <Widget>[
                      Container(
                        width: 160,
                        height: 100,
                      child:Center(
                        child: IconButton(
                          icon: Icon(Icons.home),
                          onPressed: null,
                          iconSize: 50.0,
                        ),
                      )
                      )]),
                    Column(children: <Widget>[
                      Container(
                          width: 160,
                          height: 100,
                      //Padding(
                      //padding: EdgeInsets.only(left: 5.0),
                      //),
                      child:Center(
                        child: IconButton(
                          icon: Icon(Icons.drive_eta),
                          onPressed: null,
                          iconSize: 50.0,
                        ),
                      )
                      )]),
                  ],
                ),
                //Padding(
                //padding: EdgeInsets.only(left: 5.0),
                //),
                Row(children: <Widget>[
                  Column(children: <Widget>[
                    Container(
                        width: 160,
                        height: 100,
                    child:Center(
                      child: IconButton(
                        icon: Icon(Icons.navigation),
                        onPressed: null,
                        iconSize: 50.0,
                      ),
                    )
                    )]),
                  Column(children: <Widget>[
                    Container(
                        width: 160,
                        height: 100,
                    child:Center(
                      child: IconButton(
                        icon: Icon(Icons.navigation),
                        onPressed: null,
                        iconSize: 50.0,
                      ),
                    )
                    )])
                ])
              ],
            ),
          ]),
        ));
  }
}

class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.deepPurple[300],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Colors.purpleAccent[100],
              Colors.deepPurple[300],
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Hero(
                //   tag: 'logo',
                //   child: Container(
                //     child: Image.asset("assets/logo.png"),
                //   ),
                // ),
                Text(
                  "Easy Driver",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
              ],
            ),
            CustomButton(
              text: 'Log In',
              callback: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => new LoginPage(),
                  ),
                );
              },
            ),
            CustomButton(
              text: 'Sign Up',
              callback: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => new SignUpPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.text, this.callback}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9.0),
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: callback,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
