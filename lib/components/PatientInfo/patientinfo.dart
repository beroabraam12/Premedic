import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  final constraint;
  PatientInfo(this.constraint);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Center(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:25.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: mediaQuery.size.height * 0.10,
                          width: mediaQuery.size.width * 0.12,
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text("23"),
                            Text("Age"),
                          ],
                        ),
                      ],
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left:70.0),
                      child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Container(
                       height: mediaQuery.size.height * 0.10,
                            width: mediaQuery.size.width * 0.12,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Image(image: AssetImage('assets/blood.png')),
                    ),
                  ),
                  Column(
                      children: <Widget>[
                        Text("B+"),
                        Text("Blood Type"),
                      ],
                  ),
                ],
              ),
                    ),
                ],
              ),
            ),
              Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: mediaQuery.size.height * 0.10,
                        width: mediaQuery.size.width * 0.12,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Image(image: AssetImage('assets/height.png')),),
                      Column(
                        children: <Widget>[
                          Text("188"),
                          Text("Height"),
                        ],
                      ),
                    ],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left:70.0),
                    child: Row(
              children: <Widget>[
                Container(
                    height: mediaQuery.size.height * 0.10,
                    width: mediaQuery.size.width * 0.12,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Image(image: AssetImage('assets/weight.png')),
                ),
                Column(
                    children: <Widget>[
                      Text("82"),
                      Text("Weight"),
                    ],
                ),
              ],
            ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
