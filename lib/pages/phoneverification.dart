import 'package:flutter/material.dart';
import 'package:premedic/components/VerificatuionPhone/verificationphone.dart';

class PhoneVerificationPage extends StatefulWidget {
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
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              ),
            ),
            Container(
              width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(
                vertical:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
              ),
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
              padding: const EdgeInsets.only(right:20.0,left: 20.0),
              child: Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.10,
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    blurRadius: 20.0,
                  ),
                ]),
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
