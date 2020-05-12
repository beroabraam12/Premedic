import 'package:flutter/material.dart';
import 'package:premedic/components/VerificatuionPhone/verificationphone.dart';

class PhoneVerificationPage extends StatefulWidget {
  static final routeName = '/PhoneVerification';
  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage("assets/background-01.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              ),
            ),
            Container(
              height: mediaQuery.size.height * 0.05,
              width: mediaQuery.size.width,
              child: Center(
                child: Text(
                  "Phone Verification ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.01,
              ),
            ),
            Container(
              height: mediaQuery.size.height * 0.05,
              width: mediaQuery.size.width,
              child: Center(
                child: Text(
                  "Enter phone number ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "to send verifition code",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20),
              child: Container(
                width: mediaQuery.size.width,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraint) {
                    return VerificationPhone(constraint);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
