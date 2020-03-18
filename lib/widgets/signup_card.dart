import 'package:eazydriver/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpCard extends StatefulWidget {
  @override
  _SignUpCardState createState() => _SignUpCardState();
}

class _SignUpCardState extends State<SignUpCard> {
  String _username, _email, _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
          child: new Container(
        width: double.infinity,
        height: ScreenUtil.getInstance().setHeight(1500),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15.0),
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, -10.0),
                  blurRadius: 10.0),
            ]),
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("SIGN UP",
                    style: TextStyle(
                        fontSize: ScreenUtil.getInstance().setSp(45),
                        fontFamily: "Poppins-Bold",
                        fontWeight: FontWeight.bold,
                        letterSpacing: .10)),
              
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(50),
              ),
              Text("Username",
                  style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil.getInstance().setSp(26))),
              TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Please type your Username';
                  }
                },
                onSaved: (input) => _username = input,
                decoration: InputDecoration(
                    hintText: "username",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(40),
              ),
              Text("Email (Gmail only)",
                  style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil.getInstance().setSp(26))),
              TextFormField(
                validator: (input){
                  if(input.isEmpty || input.contains('@')){
                    return 'Please Enter a valid email';
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                    hintText: "Email Address",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(40),
              ),
              Text("Password",
                  style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil.getInstance().setSp(26))),
              TextFormField(
                validator: (input){
                  if(input.isEmpty || input.length < 6){
                    return 'Your password should be atleast 6 characters';
                  }
                },
                onSaved: (input) => _password = input,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(40),
              ),
              Text("Confirm Password",
                  style: TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil.getInstance().setSp(26))),
              TextFormField(
                validator: (input){
                  if(input.isEmpty || input != _password){
                    return 'Your password should be atleast 6 characters';
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(70),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "Poppins-Medium",
                        fontSize: ScreenUtil.getInstance().setSp(28)),
                  )
                ],
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(15),
              ),
              InkWell(
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(280),
                  height: ScreenUtil.getInstance().setHeight(80),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: [
                        BoxShadow(
                            color: Theme.of(context).primaryColor.withOpacity(.8),
                            offset: Offset(0.0, 8.0),
                            blurRadius: 8.0)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new MyApp(),
                        );
                        Navigator.of(context).push(route);
                      },
                      child: Center(
                        child: Text("SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins-Bold",
                                fontSize: 18,
                                letterSpacing: 1.0)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
