import 'package:flutter/material.dart';
import 'package:premedic/components/RegisterCard/registercard.dart';

class RegestrationPage extends StatefulWidget {
  @override
  _RegestrationPage createState() => _RegestrationPage();
}

class _RegestrationPage extends State<RegestrationPage> {
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
              width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(),
              child: Center(
                child: Text("Regestration",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.10,
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 15.0,
                  ),
                ]),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraint) {
                    return RegisterCard(constraint);
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
