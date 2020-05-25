import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
          left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.03,
          right: (mediaQuery.size.width - mediaQuery.padding.right) * 0.03),
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.6,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        elevation: 2,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.08,
              ),
            ),
            Center(
              child: Image(image: AssetImage('assets/Logo.png')),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: (mediaQuery.size.width - mediaQuery.padding.left) *
                        0.04,
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.013,
                  ),
                  child: Icon(
                    Icons.lock,
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
                        offset: Offset(0.00, 3.00),
                        color: Color(0xff000000).withOpacity(0.16),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.00),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: Theme.of(context).textTheme.headline3,
                        hintText: 'Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: (mediaQuery.size.width -
                                  mediaQuery.padding.horizontal) *
                              0.05,
                          vertical: (mediaQuery.size.height -
                                  mediaQuery.padding.vertical) *
                              0.027,
                        )),
                    obscureText: true,
                    style: TextStyle(fontSize: 20),
                    keyboardAppearance: Brightness.dark,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: (mediaQuery.size.width - mediaQuery.padding.left) *
                        0.04,
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.013,
                  ),
                  child: Icon(
                    Icons.lock,
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
                        offset: Offset(0.00, 3.00),
                        color: Color(0xff000000).withOpacity(0.16),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30.00),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: Theme.of(context).textTheme.headline3,
                        hintText: 'Password Confirmation',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: (mediaQuery.size.width -
                                  mediaQuery.padding.horizontal) *
                              0.05,
                          vertical: (mediaQuery.size.height -
                                  mediaQuery.padding.vertical) *
                              0.027,
                        )),
                    obscureText: true,
                    style: TextStyle(fontSize: 20),
                    keyboardAppearance: Brightness.dark,
                  ),
                )
              ],
            ),
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
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("SEND", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).accentColor,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
