import 'package:flutter/material.dart';

import '../components/Verification-Phone/verificationphone.dart';
import '../pages/login.dart';

class PhoneVerificationPage extends StatefulWidget {
  static final routeName = '/PhoneVerification';
  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.07,
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.03,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: Theme.of(context).iconTheme.size,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
              ),
            ),
            Center(
              child: Text(
                "Phone Verification ",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.015,
              ),
            ),
            Center(
              child: Text(
                "Enter phone number\nto send verifition code",
                style: TextStyle(color: Colors.grey[300], fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
              ),
              child: VerificationPhone(),
            ),
          ],
        ),
      ),
    );
  }
}
