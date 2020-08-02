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
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
      "Panadol Extra",
      "3",
    ));
    patientCardList.add(PatientCardModel(
      "Doctor Name",
      "notes bla bla bla bla bla bla bla bla bla bla bla bla bla",
      "12/07/2020",
      '12/07/2020',
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
      "Panadol Extra",
      "3",
    ));
    patientCardList.add(PatientCardModel(
      "Doctor Name",
      "notes bla bla bla bla bla bla bla bla bla bla bla bla bla",
      "12/07/2020",
      '12/07/2020',
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
      "Panadol Extra",
      "3",
    ));
    patientCardList.add(PatientCardModel(
      "Doctor Name",
      "notes bla bla bla bla bla bla bla bla bla bla bla bla bla",
      "12/07/2020",
      '12/07/2020',
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
      "Panadol Extra",
      "3",
    ));

    var mediaquery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
          top: (mediaquery.size.height - mediaquery.padding.top) * 0.02),
      child: Column(
        children: <Widget>[
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: patientCardList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
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
                                        Radius.circular(20.0))),
                                actions: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(
                                          top: (mediaquery.size.height -
                                                  mediaquery.padding.top) *
                                              0.02),
                                      height: mediaquery.size.height * 0.8,
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
                                                    patientCardList[index]
                                                        .doctorName,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6,
                                                    maxLines: 3,
                                                  ),
                                                  Container(
                                                    width:
                                                        mediaquery.size.width *
                                                            0.5,
                                                    child: Text(
                                                      patientCardList[index]
                                                          .subTitle,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .subtitle2,
                                                      maxLines: 5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              CircleAvatar(
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .accentColor,
                                                child: Icon(
                                                  Icons.share,
                                                  color: Colors.white,
                                                ),
                                              ),
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
                                              itemCount: patientCardList.length,
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
                                                                patientCardList[
                                                                        index]
                                                                    .medicineImg),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                        right: (mediaquery.size
                                                                    .width -
                                                                mediaquery
                                                                    .padding
                                                                    .right) *
                                                            0.02,
                                                      )),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            patientCardList[
                                                                    index]
                                                                .medicineName,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline4,
                                                          ),
                                                          Text(
                                                            patientCardList[
                                                                        index]
                                                                    .medicineOftenDay +
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
                                                        right: (mediaquery.size
                                                                    .width -
                                                                mediaquery
                                                                    .padding
                                                                    .right) *
                                                            0.02,
                                                      )),
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
                                                  Text('Start',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .overline),
                                                  Text(
                                                    patientCardList[index]
                                                        .start,
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
                                                  Text('Finish',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .overline),
                                                  Text(
                                                    patientCardList[index]
                                                        .finish,
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
                                          0.03)),
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
                                                .headline6,
                                            maxLines: 3,
                                          ),
                                          Text(
                                            patientCardList[index].subTitle,
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
                                                  patientCardList[index].start,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2),
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
                                                  .bodyText2),
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
