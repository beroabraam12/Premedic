import 'package:flutter/material.dart';

class PatientPage extends StatefulWidget {
  static final routeName = '/w';
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
            height: 368.00,
            width: 375.00,
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