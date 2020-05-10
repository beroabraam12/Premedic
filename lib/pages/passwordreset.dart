import 'package:flutter/material.dart';
import 'package:premedic/components/PasswordReset/passwordreset.dart';


class PasswordResetPage extends StatefulWidget {
  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
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
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.05,
                  ),
                ),
              Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                ),
                child: Center(
                  child: Text(
                    "Password Reset",
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
             Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  ),
                ),
            Container(
              child: Center(
                child: Text(
                  "Enter new password to reset the old one ",
               
                  //style: Theme.of(context).textTheme.subhead,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.12,
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    blurRadius: 15.0,
                  ),
                ]),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraint) {
                    return PasswordReset(constraint);
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
