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
        decoration:  BoxDecoration(
          image:  DecorationImage(
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
                   style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            )
                  ),
                ),
              ),
             Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.01,
                  ),
                ),
            Container(
              child: Center(
                child: Text(
                  "Enter new password to reset the old one ",
               
                 style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.12,
                ),
                decoration:  BoxDecoration(boxShadow: [
                   BoxShadow(
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
