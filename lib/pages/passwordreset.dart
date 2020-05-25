import 'package:flutter/material.dart';

import 'package:premedic/components/PasswordReset/passwordreset.dart';

class PasswordResetPage extends StatefulWidget {
  static final routeName = '/PasswordReset';
  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.08,
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.03),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: Theme.of(context).iconTheme.size,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
              ),
            ),
            Center(
              child: Text("Password Reset",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.01,
              ),
            ),
            Center(
              child: Text(
                "Enter new password to reset",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 18,
                ),
              ),
            ),
            Center(
              child: Text(
                "the old one",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03)),
            PasswordReset(),
          ],
        ),
      ),
    );
  }
}
