import 'package:flutter/material.dart';
import 'package:premedic/pages/home.dart';

import 'package:premedic/pages/regestration.dart';
import 'package:premedic/pages/phone_verification.dart';
import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  String phone, pass;
  bool _isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _buildPhoneField(mediaQuery, context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.025,
            top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.011,
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
          width: (mediaQuery.size.width - mediaQuery.padding.horizontal) * 0.7,
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
          child: TextFormField(
            decoration: InputDecoration(
                hintStyle: Theme.of(context).textTheme.headline3,
                hintText: 'Phone number',
                border: InputBorder.none,
                errorStyle: TextStyle(
                  fontSize: 12.0,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal:
                      (mediaQuery.size.width - mediaQuery.padding.horizontal) *
                          0.05,
                )),
            validator: (value) {
              if (value.isEmpty ||
                  RegExp("^(?:[+0]9)?[0-9]{10}\$").hasMatch(value)) {
                return "please enter a valid number";
              }

              return null;
            },
            onSaved: (val) =>
                Provider.of<User>(context, listen: false).phone = val,
            keyboardType: TextInputType.phone,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  _buildPasswordTextField(mediaQuery, context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.025,
            top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.013,
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
          width: (mediaQuery.size.width - mediaQuery.padding.horizontal) * 0.7,
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
          child: TextFormField(
            decoration: InputDecoration(
                hintStyle: Theme.of(context).textTheme.headline3,
                hintText: 'Password',
                labelStyle: TextStyle(fontSize: 20.0),
                alignLabelWithHint: true,
                errorStyle: TextStyle(
                  fontSize: 14.0,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal:
                      (mediaQuery.size.width - mediaQuery.padding.horizontal) *
                          0.05,
                )),
            validator: (value) {
              if (value.length < 6) {
                return "password should be 6 numbers or more";
              }
              return null;
            },
            onSaved: (val) =>
                Provider.of<User>(context, listen: false).password = val,
            obscureText: true,
            style: TextStyle(fontSize: 18),
            keyboardAppearance: Brightness.dark,
          ),
        )
      ],
    );
  }

  Future submitLogin() async {
    Function login = Provider.of<User>(context, listen: false).login;
    if (!_formKey.currentState.validate()) {
      return;
    }
    setState(() {
      _isLoading = true;
    });
    _formKey.currentState.save();
    var success = await login();
    if (success) {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushNamedAndRemoveUntil(
          HomePage.routeName, (Route<dynamic> route) => false);
    } else {
      setState(() {
        _isLoading = false;
      });
      // WarningPopup.showWarningDialog(context, false,
      //     Provider.of<User>(context, listen: false).errorMessage);
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Center(
            child: Container(
              height: mediaQuery.size.height * 0.1,
              width: mediaQuery.size.width * 0.6,
              child: Image(
                image: AssetImage('assets/Logo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.06,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                _buildPhoneField(mediaQuery, context),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  ),
                ),
                _buildPasswordTextField(mediaQuery, context),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneVerificationPage()));
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
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          _isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Container(
                  width: mediaQuery.size.width * 0.55,
                  height: mediaQuery.size.height * 0.07,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Text("Login",
                        style: Theme.of(context).textTheme.button),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      submitLogin();
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
                  right:
                      (mediaQuery.size.width - mediaQuery.padding.right) * 0.01,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RegestrationPage.routeName,
                  );
                },
                child: Text(
                  'Register now!',
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
        ],
      ),
    );
  }
}
