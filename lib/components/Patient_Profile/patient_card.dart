import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:premedic/models/patient_model.dart';
import 'package:premedic/models/prescriptions.dart';
import 'package:premedic/provider/medical.dart';
import 'package:provider/provider.dart';

class PatientCards extends StatefulWidget {
  @override
  _PatientCardsState createState() => _PatientCardsState();
}

class _PatientCardsState extends State<PatientCards> {
  @override
  Widget build(BuildContext context) {
    List<PrescriptionsModel> prescriptions =
        Provider.of<Medical>(context).prescriptions;

    var mediaquery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
          top: (mediaquery.size.height - mediaquery.padding.top) * 0.02),
      child: Column(
        children: <Widget>[
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: prescriptions.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int indexx) {
                return Container(
                  padding: EdgeInsets.only(
                      bottom:
                          (mediaquery.size.height - mediaquery.padding.top) *
                              0.02),
                  height: mediaquery.size.height * 0.29,
                  child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                actions: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: (mediaquery.size.height -
                                                  mediaquery.padding.top) *
                                              0.01),
                                      height: (mediaquery.size.height * 0.3) +
                                          (prescriptions[indexx]
                                                  .medicines
                                                  .length *
                                              (mediaquery.size.height * 0.1)),
                                      width: mediaquery.size.width,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    prescriptions[indexx]
                                                        .doctorName,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6,
                                                    maxLines: 1,
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: mediaquery
                                                                .size.height *
                                                            0.005),
                                                    width:
                                                        mediaquery.size.width *
                                                            0.5,
                                                    child: Text(
                                                      prescriptions[indexx]
                                                          .description,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                      maxLines: 3,
                                                      softWrap: true,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(10),
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .accentColor,
                                                  child: Icon(
                                                    Icons.share,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                            top: (mediaquery.size.height -
                                                    mediaquery.padding.top) *
                                                0.02,
                                          )),
                                          Divider(
                                            color: Colors.grey,
                                          ),
                                          ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemCount: prescriptions[indexx]
                                                  .medicines
                                                  .length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Container(
                                                    child: Column(children: <
                                                        Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                    top: (mediaquery
                                                                .size.height -
                                                            mediaquery
                                                                .padding.top) *
                                                        0.02,
                                                  )),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                prescriptions[
                                                                        indexx]
                                                                    .medicines[
                                                                        index]
                                                                    .image),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                        right: (mediaquery
                                                                .size.width) *
                                                            0.005,
                                                      )),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            prescriptions[
                                                                    indexx]
                                                                .medicines[
                                                                    index]
                                                                .name,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline4,
                                                          ),
                                                          Text(
                                                            prescriptions[
                                                                        indexx]
                                                                    .medicines[
                                                                        index]
                                                                    .dose
                                                                    .toString() +
                                                                ' Times per Day',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .subtitle2,
                                                            maxLines: 3,
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: (mediaquery
                                                                      .size
                                                                      .width -
                                                                  mediaquery
                                                                      .padding
                                                                      .right) *
                                                              0.02,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.info,
                                                        color: Theme.of(context)
                                                            .accentColor,
                                                        size: 25,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                    bottom: (mediaquery
                                                                .size.height -
                                                            mediaquery.padding
                                                                .bottom) *
                                                        0.02,
                                                  )),
                                                  Divider(
                                                    color: Colors.grey,
                                                  ),
                                                ]));
                                              }),
                                          Padding(
                                              padding: EdgeInsets.only(
                                            top: (mediaquery.size.height -
                                                    mediaquery.padding.top) *
                                                0.02,
                                          )),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Icon(Icons.access_time,
                                                      size: 15,
                                                      color: Theme.of(context)
                                                          .accentColor),
                                                  Text('Start ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .overline),
                                                  Text(
                                                    DateFormat("MMMM d").format(
                                                        prescriptions[indexx]
                                                            .startDate),
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.access_time,
                                                      size: 15,
                                                      color: Theme.of(context)
                                                          .accentColor),
                                                  Text('Finish ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .overline),
                                                  Text(
                                                    DateFormat("MMMM d").format(
                                                        prescriptions[indexx]
                                                            .endDate),
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              );
                            });
                      },
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 3,
                          margin: EdgeInsets.symmetric(
                              horizontal: mediaquery.size.width * 0.05),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: (mediaquery.size.height -
                                              mediaquery.padding.top) *
                                          0.01)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: (mediaquery.size.width -
                                                mediaquery.padding.left) *
                                            0.03,
                                        right: (mediaquery.size.width -
                                                mediaquery.padding.right) *
                                            0.03,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            prescriptions[indexx].doctorName,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                            maxLines: 3,
                                          ),
                                          Text(
                                            prescriptions[indexx].description,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                            maxLines: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: (mediaquery.size.width -
                                              mediaquery.padding.right) *
                                          0.04,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Theme.of(context).accentColor,
                                      child: Icon(
                                        Icons.share,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: (mediaquery.size.height -
                                          mediaquery.padding.top) *
                                      0.03,
                                  left: (mediaquery.size.width -
                                          mediaquery.padding.left) *
                                      0.050,
                                  right: (mediaquery.size.width -
                                          mediaquery.padding.right) *
                                      0.050,
                                ),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: (mediaquery.size.width -
                                            mediaquery.padding.left) *
                                        0.02,
                                    right: (mediaquery.size.width -
                                            mediaquery.padding.right) *
                                        0.02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.access_time,
                                              size: 20,
                                              color: Theme.of(context)
                                                  .accentColor),
                                          Text(
                                              'Start ' +
                                                  DateFormat("MMMM d yyy")
                                                      .format(
                                                          prescriptions[indexx]
                                                              .startDate),
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.access_time,
                                              size: 20,
                                              color: Theme.of(context)
                                                  .accentColor),
                                          Text(
                                              'Finish ' +
                                                  DateFormat("MMMM d yyy")
                                                      .format(
                                                          prescriptions[indexx]
                                                              .endDate),
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ))),
                );
              }),
        ],
      ),
    );
  }
}
