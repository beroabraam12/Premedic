import 'package:flutter/material.dart';

import '../components/VerificatuionCode/verificationcard.dart';

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
                top: (mediaQuery.size.height-mediaQuery.padding.top)*0.08,
                left: (mediaQuery.size.width-mediaQuery.padding.left)*0.05,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.white,size: Theme.of(context).iconTheme.size),
                onPressed: () {},
              ),
            ),
            Padding(padding: EdgeInsets.only(
              top: (mediaQuery.size.height-mediaQuery.padding.top)*0.03
            )),
            Center(
              child: Column(
                children: <Widget>[
                  Text("Verification Code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )),
                  Padding(padding: EdgeInsets.only(
              top: (mediaQuery.size.height-mediaQuery.padding.top)*0.01
            )),
              Text(
                "    We will send a verification code\nwithin 2 minutes to verify your number",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
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
