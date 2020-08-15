import 'package:flutter/material.dart';

import '../components/login/login_card.dart';

class LoginPage extends StatefulWidget {
  static final routeName = '/login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background-01.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.06,
                ),
              ),
              Center(
                child: Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
                  right:
                      (mediaQuery.size.width - mediaQuery.padding.right) * 0.04,
                ),
                child: Container(
                  width: mediaQuery.size.width,
                  height: mediaQuery.size.height * 0.73,
                  margin: EdgeInsets.symmetric(
                    vertical:
                        (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.03,
                  ),
                  child: LoginCard(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
