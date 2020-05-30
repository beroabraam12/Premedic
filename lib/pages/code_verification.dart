import 'package:flutter/material.dart';

import '../components/Verification-Code/verificationcard.dart';
import '../pages/phone_verification.dart';

class CodeVerificationPage extends StatefulWidget {
  static final routeName = '/PhoneVerificationCode';
  @override
  _CodeVerificationPageState createState() => _CodeVerificationPageState();
}

class _CodeVerificationPageState extends State<CodeVerificationPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
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
                icon: Icon(Icons.arrow_back,
                    color: Colors.white,
                    size: Theme.of(context).iconTheme.size),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhoneVerificationPage()),
                  );
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03)),
            Center(
              child: Column(
                children: <Widget>[
                  Text("Verification Code",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                          top: (mediaQuery.size.height -
                                  mediaQuery.padding.top) *
                              0.01)),
                  Center(
                    child: Text(
                      "We will send a verification code",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "within 2 minutes to verify your number",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(
                vertical:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              ),
              child: VerificationCard(),
            ),
          ],
        ),
      ),
    );
  }
}
