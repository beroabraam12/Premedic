/* import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:premedic/pages/login.dart';

class RegisterCard extends StatefulWidget {
  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {
  String radioButtonItem = 'Gender';
  int id = 1;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.07,
            ),
          ),
          Center(
            child: Image(image: AssetImage('assets/Logo.png')),
          ),
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.2,
              height: mediaQuery.size.height * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Icon(Icons.add, size: 50, color: Colors.white),
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
                  Icons.supervised_user_circle,
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
                      hintText: 'Full Name',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.email,
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
                      hintText: 'Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                      hintText: 'Mobile',
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
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.lock_outline,
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
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.lock_outline,
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
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.calendar_today,
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
                      hintText: 'Birthdate',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
            ),
            child: Text(
              'Select Gender',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.01,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Gender';
                    id = 1;
                  });
                },
              ),
              Text(
                'Male',
                style: new TextStyle(fontSize: 17.0),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.05)),
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Gender';
                    id = 2;
                  });
                },
              ),
              Text(
                'Female',
                style: new TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.5,
              height: mediaQuery.size.height * 0.06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("REGISTER", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).accentColor,
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Do you have account?",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Login now!",
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
          Center(
            child: Column(
              children: <Widget>[
                Text('OR',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  ),
                ),
                SignInButton(
                  Buttons.Facebook,
                  text: "Sign up with Facebook",
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.01,
                  ),
                ),
                SignInButton(
                  Buttons.Google,
                  text: "Sign up with Google",
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:premedic/pages/login.dart';

class RegisterCard extends StatefulWidget {
  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {
  String radioButtonItem = 'Gender';
  int id = 1;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.07,
            ),
          ),
          Center(
            child: Image(image: AssetImage('assets/Logo.png')),
          ),
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.2,
              height: mediaQuery.size.height * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Icon(Icons.add, size: 50, color: Colors.white),
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
                  Icons.supervised_user_circle,
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
                      hintText: 'Full Name',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.email,
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
                      hintText: 'Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                      hintText: 'Mobile',
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
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.lock_outline,
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
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.lock_outline,
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
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) *
                      0.025)),
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
                  Icons.calendar_today,
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
                      hintText: 'Birthdate',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: (mediaQuery.size.width -
                                mediaQuery.padding.horizontal) *
                            0.05,
                        vertical: (mediaQuery.size.height -
                                mediaQuery.padding.vertical) *
                            0.027,
                      )),
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
            ),
            child: Text(
              'Select Gender',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.01,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Gender';
                    id = 1;
                  });
                },
              ),
              Text(
                'Male',
                style: new TextStyle(fontSize: 17.0),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.05)),
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Gender';
                    id = 2;
                  });
                },
              ),
              Text(
                'Female',
                style: new TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.5,
              height: mediaQuery.size.height * 0.06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("REGISTER", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).accentColor,
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Do you have account?",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
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
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                  },
                  child: Text(
                  "Login now!",
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
          Center(
            child: Column(
              children: <Widget>[
                Text('OR',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  ),
                ),
                SignInButton(
                  Buttons.Facebook,
                  text: "Sign up with Facebook",
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.01,
                  ),
                ),
                SignInButton(
                  Buttons.Google,
                  text: "Sign up with Google",
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
