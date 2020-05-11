import 'package:flutter/material.dart';

class PatientPage extends StatefulWidget {
  static final routeName = '/';
  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
           height: mediaQuery.size.height * 0.20,
            width: mediaQuery.size.width,
            decoration: BoxDecoration(
              color: Color(0xff31a6c3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150.00),
                bottomRight: Radius.circular(150.00),
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.10,
                  ),
                ),
      
              ]))]));
  }
}