import 'package:flutter/material.dart';

import '../components/Patient_Profile/filter.dart';
import '../components/Patient_Profile/patient_card.dart';

class PatientProfilePage extends StatefulWidget {
  static final routeName = "/patient-profile";
  @override
  _PatientProfilePageState createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: mediaquery.size.height * 0.25,
                width: mediaquery.size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              top: (mediaquery.size.height -
                                      mediaquery.padding.top) *
                                  0.02,
                              left: (mediaquery.size.width -
                                      mediaquery.padding.left) *
                                  0.05,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Patient Name',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                Text('Profile Last Update 20/3/2020',
                                    style: Theme.of(context).textTheme.button),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: (mediaquery.size.height -
                                      mediaquery.padding.top) *
                                  0.02,
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y'),
                              radius: 30,
                            ),
                          ),
                        ])
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: (mediaquery.size.height - mediaquery.padding.top) * 0.04,
              )),
              Filter(),
              Container(
                width: (mediaquery.size.width) * 0.95,
                child: PatientCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
