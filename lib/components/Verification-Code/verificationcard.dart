import 'package:flutter/material.dart';

import 'package:premedic/pages/password_reset.dart';

class VerificationCard extends StatefulWidget {
  @override
  _VerificationCardState createState() => _VerificationCardState();
}

class _VerificationCardState extends State<VerificationCard> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border(
          bottom: BorderSide(
        color: Colors.grey[600],
        width: 2.0,
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal:
              (mediaQuery.size.width - mediaQuery.padding.horizontal) * 0.04),
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.5,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        color: Color(0xFFFFFFFF),
        elevation: 2,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.09,
              ),
            ),
            Center(
              child: Container(
                child: Image(image: AssetImage('assets/Logo.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.08,
              ),
            ),
            // Container(
            //   width: mediaQuery.size.width * 0.8,
            //   child: PinPut(
            //       fieldsCount: 6,
            //       focusNode: _pinPutFocusNode,
            //       controller: _pinPutController,
            //       submittedFieldDecoration: _pinPutDecoration.copyWith(
            //         border: Border(
            //             bottom: BorderSide(
            //           color: Colors.grey[600],
            //           width: 2.0,
            //         )),
            //       ),
            //       selectedFieldDecoration: _pinPutDecoration,
            //       followingFieldDecoration: _pinPutDecoration.copyWith(
            //         border: Border(
            //             bottom: BorderSide(
            //           color: Colors.grey[600],
            //           width: 2.0,
            //         )),
            //       )),
            // ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.08,
              ),
            ),
            Container(
                width: mediaQuery.size.width * 0.5,
                height: mediaQuery.size.height * 0.06,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: new Text(
                    "VERIFY",
                    style: TextStyle(color: Colors.white, letterSpacing: 2),
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PasswordResetPage()),
                    );
                  },
                )),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
                bottom:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
