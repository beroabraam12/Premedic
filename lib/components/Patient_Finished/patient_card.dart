import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
      child: Column(
        children: <Widget>[
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: patientCardList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
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
                                      height: mediaquery.size.height * 0.85,
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
                                                0.003,
                                          )),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.access_time,
                                                      size: 15,
                                                      color: Theme.of(context)
                                                          .accentColor),
                                                  Text(
                                                      'Start' +
                                                          patientCardList[index]
                                                              .start,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .overline),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.access_time,
                                                      size: 15,
                                                      color: Theme.of(context)
                                                          .accentColor),
                                                  Text(
                                                      'Finish' +
                                                          patientCardList[index]
                                                              .finish,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .overline),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                            top: (mediaquery.size.height -
                                                    mediaquery.padding.top) *
                                                0.025,
                                          )),
                                          Text(
                                            'Rate This Perceptions',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle2,
                                          ),
                                          Text(
                                            'Your rate is very important to us\nimprove the quality of listed doctor',
                                            style: Theme.of(context)
                                                .textTheme
                                                .overline,
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                            top: (mediaquery.size.height -
                                                    mediaquery.padding.top) *
                                                0.015,
                                          )),
                                          RatingBar(
                                            itemSize: 20,
                                            initialRating: 0,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ],
                                      )),
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
