import 'package:flutter/material.dart';
import 'package:premedic/pages/Hospital&Clinc/buttons.dart';
import './dropdownlist.dart';
import './search.dart';
import './cards.dart';

class HospitalsClinics extends StatefulWidget {
  @override
  _HospitalsClinicsState createState() => _HospitalsClinicsState();
}

class _HospitalsClinicsState extends State<HospitalsClinics> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
                height: mediaquery.size.height,
                width: mediaquery.size.width,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.07,
                    )),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                          left: (mediaquery.size.width -
                                  mediaquery.padding.left) *
                              0.07,
                        )),
                        Icon(
                          Icons.arrow_back,
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.03,
                    )),
                    Column(
                      children: <Widget>[
                        Text(
                          'Hospitals & Clinics',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                          top: (mediaquery.size.height -
                                  mediaquery.padding.top) *
                              0.03,
                        )),
                        Dropdown(),
                        Padding(
                            padding: EdgeInsets.only(
                          top: (mediaquery.size.height -
                                  mediaquery.padding.top) *
                              0.03,
                        )),
                        ButtonsRow(),
                        Padding(
                            padding: EdgeInsets.only(
                          top: (mediaquery.size.height -
                                  mediaquery.padding.top) *
                              0.03,
                        )),
                        Search(),
                        Container(
                          width: mediaquery.size.width * 0.9,
                          height: (mediaquery.size.height -
                                  mediaquery.padding.bottom) *
                              0.54,
                          padding: EdgeInsets.only(
                              top: (mediaquery.size.height -
                                      mediaquery.padding.top) *
                                  0.02),
                          child: Cards(),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
