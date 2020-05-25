import 'package:flutter/material.dart';

import 'package:premedic/components/RegisterCard/registercard.dart';

class RegestrationPage extends StatefulWidget {
  static final routeName = '/RegistrationPage';
  @override
  _RegestrationPage createState() => _RegestrationPage();
}

class _RegestrationPage extends State<RegestrationPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage("assets/background-01.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.08,
              ),
            ),
            Center(
              child: Text("Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.03,
                right:
                    (mediaQuery.size.width - mediaQuery.padding.right) * 0.03,
              ),
              child: Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
                ),
                child: RegisterCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
