import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:premedic/pages/home.dart';
import 'package:premedic/pages/regestration.dart';
import 'package:premedic/pages/phoneverification.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 1,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
          Center(
            child: Container(
              height: mediaQuery.size.height * 0.06,
              width: mediaQuery.size.width,
              child: Image(image: AssetImage('assets/Logo.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.025,
                  top:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.011,
                ),
                child: Icon(
                  Icons.phone_android,
                  color: Theme.of(context).accentColor,
                  size: Theme.of(context).iconTheme.size,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
              )),
              Container(
                width: (mediaQuery.size.width - mediaQuery.padding.horizontal) *
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
                      hintText: 'Phone number',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.phone,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.025,
                  top:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.013,
                ),
                child: Icon(
                  Icons.lock,
                  color: Theme.of(context).accentColor,
                  size: Theme.of(context).iconTheme.size,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
              )),
              Container(
                width: (mediaQuery.size.width - mediaQuery.padding.horizontal) *
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhoneVerificationPage()),
                  );
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.01,
            ),
          ),
          Container(
            width: mediaQuery.size.width * 0.55,
            height: mediaQuery.size.height * 0.07,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Text("Login", style: Theme.of(context).textTheme.button),
              color: Theme.of(context).accentColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have account?",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
            padding: EdgeInsets.only(
              right: (mediaQuery.size.width - mediaQuery.padding.right) * 0.01,
            ),
          ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegestrationPage()),
                  );
                },
                  child: Text(
                  'Register now !',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Text('OR', style: TextStyle(color: Colors.grey)),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.015,
            ),
          ),
          SignInButton(
            Buttons.Facebook,
            text: "Continue with Facebook",
            onPressed: () {},
          ),
          SignInButton(
            Buttons.Google,
            text: "Sign in with Google",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
