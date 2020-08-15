import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:premedic/provider/medical.dart';
import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

import '../components/Patient_Profile/filter.dart';
import '../components/Patient_Profile/patient_card.dart';

class PatientProfilePage extends StatefulWidget {
  static final routeName = "/patient-profile";
  @override
  _PatientProfilePageState createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  @override
  void initState() {
    Provider.of<Medical>(context, listen: false)
        .getPerception()
        .then((value) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    final user = Provider.of<User>(context);
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
                                  user.user.name,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                Text(
                                    'Last Updated at ${DateFormat("EEEE, MMMM d").format(user.user.updatedAt)}',
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
                              backgroundImage: NetworkImage(user.user.avater),
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
