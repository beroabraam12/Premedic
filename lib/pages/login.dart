import 'package:flutter/material.dart';
import 'package:premedic/components/login/discountcard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Container(
              width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(
               
                vertical:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.10,
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
            Container(
             width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(
               
                vertical:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.00,
              ),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                 
                  blurRadius: 20.0,
                ),
              ]),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraint) {
                  return DiscountCard(constraint);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}