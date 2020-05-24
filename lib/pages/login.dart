import 'package:flutter/material.dart';
import 'package:premedic/components/login/discountcard.dart';

class LoginPage extends StatefulWidget {
   static final routeName = '/LoginPage';
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
            Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.08,
              ),
            ),
            Container(
              height: mediaQuery.size.height*0.05,
              width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(),
              child: Center(
                child: Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    )),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
                right: (mediaQuery.size.width - mediaQuery.padding.right) * 0.04,
              ),
              child: Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.1,
                ),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraint) {
                    return DiscountCard(constraint);
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
//TODO 
