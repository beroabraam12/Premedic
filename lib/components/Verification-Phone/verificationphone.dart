import 'package:flutter/material.dart';

import 'package:premedic/pages/code_verification.dart';

class VerificationPhone extends StatelessWidget {
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
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.1,
              ),
            ),
            Center(
              child: Container(
                child: Image(image: AssetImage('assets/Logo.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.07,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: (mediaQuery.size.width - mediaQuery.padding.left) *
                        0.03,
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.012,
                  ),
                  child: Icon(
                    Icons.phone_android,
                    color: Theme.of(context).accentColor,
                    size: Theme.of(context).iconTheme.size,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
                )),
                Container(
                  width:
                      (mediaQuery.size.width - mediaQuery.padding.horizontal) *
                          0.7,
                  height: mediaQuery.size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1.00, 1.00),
                        color: Color(0xff000000).withOpacity(0.20),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.00),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: Theme.of(context).textTheme.headline3,
                        hintText: 'Phone Number',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: (mediaQuery.size.width -
                                  mediaQuery.padding.horizontal) *
                              0.05,
                          vertical: (mediaQuery.size.height -
                                  mediaQuery.padding.vertical) *
                              0.02,
                        )),
                    keyboardType: TextInputType.phone,
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              ),
            ),
            Container(
              width: mediaQuery.size.width * 0.5,
              height: mediaQuery.size.height * 0.06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Text("SEND", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CodeVerificationPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
