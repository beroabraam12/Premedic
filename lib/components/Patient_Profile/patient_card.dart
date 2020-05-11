import 'package:flutter/material.dart';

import 'package:premedic/models/patient_model.dart';

class PatientCards extends StatefulWidget {
  @override
  _PatientCardsState createState() => _PatientCardsState();
}

class _PatientCardsState extends State<PatientCards> {
  @override
  Widget build(BuildContext context) {
    List<PatientCardModel> patientCardList = List();
    patientCardList.add(PatientCardModel(
      "Doctor Name",
      "notes bla bla bla bla bla bla bla bla bla bla bla bla",
      "12/07/2020",
      '12/07/2020',
    ));
    patientCardList.add(PatientCardModel(
      "Doctor Name",
      "notes bla bla bla bla bla bla bla bla bla bla bla bla bla",
      "12/07/2020",
      '12/07/2020',
    ));
    var mediaquery = MediaQuery.of(context);
    return Container(
      child: Column(
        children: <Widget>[
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: patientCardList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(top: (mediaquery.size.height - mediaquery.padding.top)*0.02),
                  height: mediaquery.size.height * 0.29,
                  child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                actions: <Widget>[
                                  
                                ],
                              );
                            });
                      },
                      child: Card(
                          elevation: 3,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: (mediaquery.size.height -
                                              mediaquery.padding.top) *
                                          0.02)),
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
                                            patientCardList[index].doctorName,
                                            style: Theme.of(context)
                                                .textTheme
                                                .title,
                                            maxLines: 3,
                                          ),
                                          Text(
                                            patientCardList[index].subTitle,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle,
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
                                                  patientCardList[index].start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .body1),
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
                                                  patientCardList[index].finish,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .body1),
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
