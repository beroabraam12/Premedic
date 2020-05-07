import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class HospitalClincCards extends StatefulWidget {
  @override
  _HospitalClincCardsState createState() => _HospitalClincCardsState();
}

class _HospitalClincCardsState extends State<HospitalClincCards> {
  double _rating;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cards = [
      {
        'title': "Doctor Name Clinc",
        'subtitle': 'notes bla bla bla bla',
        'rating': 'Rating 3.5',
        'circleimage':
            'https://madosan.com.tr/assets/uploads/galeri/super-market-hiper-market/img-6510-jpg_1505830068.jpg',
      },
      {
        'title': "Hospital Name",
        'subtitle': 'notes bla bla bla bla bla',
        'rating': '_rating',
        'circleimage':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
      },
      {
        'title': "Hospital Name",
        'subtitle': 'notes bla bla bla bla bla',
        'rating': 'Rating NO.',
        'circleimage':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
      },
      {
        'title': "Hospital Name",
        'subtitle': 'notes bla bla bla bla bla',
        'rating': 'Rating NO.',
        'circleimage':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
      },
      {
        'title': "Hospital Name",
        'subtitle': 'notes bla bla bla bla bla',
        'rating': 'Rating NO.',
        'circleimage':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
      },
      {
        'title': "Hospital Name",
        'subtitle': 'notes bla bla bla bla bla',
        'rating': 'Rating NO.',
        'circleimage':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
      },
    ];

    var mediaquery = MediaQuery.of(context);
    return SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: cards.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: mediaquery.size.height * 0.23,
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
                                    SafeArea(
                                      child: Container(
                                        height: mediaquery.size.height * 0.8,
                                        width: mediaquery.size.width,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              height:
                                                  mediaquery.size.height * 0.2,
                                              width: mediaquery.size.width,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Text(
                                                        '${cards[index]['title']}',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .title,
                                                      ),
                                                      Text(
                                                        '${cards[index]['subtitle']}',
                                                        softWrap: true,
                                                        maxLines: 3,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .body1,
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: (mediaquery
                                                                      .size
                                                                      .width -
                                                                  mediaquery
                                                                      .padding
                                                                      .horizontal) *
                                                              0.005)),
                                                  CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        '${cards[index]['circleimage']}'),
                                                    radius: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  mediaquery.size.height * 0.1,
                                              width: mediaquery.size.width,
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: (mediaquery.size
                                                                      .height -
                                                                  mediaquery
                                                                      .padding
                                                                      .top) *
                                                              0.01)),
                                                  RatingBar(
                                                    onRatingChanged:
                                                        (double rating) {
                                                      setState(() {
                                                        _rating = rating;
                                                      });
                                                    },
                                                    filledIcon: Icons.star,
                                                    emptyIcon:
                                                        Icons.star_border,
                                                    halfFilledIcon:
                                                        Icons.star_half,
                                                    isHalfAllowed: true,
                                                    filledColor: Colors.yellow,
                                                    emptyColor: Colors.grey,
                                                    halfFilledColor:
                                                        Colors.yellow,
                                                    initialRating: 0,
                                                    maxRating: 5,
                                                    size: 30,
                                                  ),
                                                  Text(
                                                    'Perceptions Rating : $_rating',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subhead,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  mediaquery.size.height * 0.35,
                                              width: mediaquery.size.width,
                                              child: GridView(
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                      mainAxisSpacing: 5,
                                                    crossAxisSpacing: 5, 
                                                    crossAxisCount: 3,
                                                  ),
                                                  children: <Widget>[
                                                    Card(
                                                      elevation: 9,
                                                      color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text('SUN'),
                                                          Text('7:00 pm'),
                                                          Text('to'),
                                                          Text('8:30 pm'),
                                                        ],
                                                      ),
                                                    ),
                                                    Card(
                                                      elevation: 9,
                                                      color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text('MON'),
                                                          Text('7:00 pm'),
                                                          Text('to'),
                                                          Text('8:30 pm'),
                                                        ],
                                                      ),
                                                    ),
                                                    Card(
                                                      elevation: 9,
                                                      color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text('TUE'),
                                                          Text('7:00 pm'),
                                                          Text('to'),
                                                          Text('8:30 pm'),
                                                        ],
                                                      ),
                                                    ),
                                                    Card(
                                                      elevation: 9,
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text('WED'),
                                                          Text('Holiday'),
                                                        ],
                                                      ),
                                                    ),
                                                    Card(
                                                      elevation: 9,
                                                      color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text('THU'),
                                                          Text('7:00 pm'),
                                                          Text('to'),
                                                          Text('8:30 pm'),
                                                        ],
                                                      ),
                                                    ),
                                                    Card(
                                                      elevation: 9,
                                                      color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Text('FRI'),
                                                          Text('7:00 pm'),
                                                          Text('to'),
                                                          Text('8:30 pm'),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(),
                                                    Card(
                                                      elevation: 9,
                                                        color: Theme.of(context)
                                                            .accentColor,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: <Widget>[
                                                            Text('SAT'),
                                                            Text('Holiday'),
                                                          ],
                                                        ))
                                                  ]),
                                            ),
                                            Container(
                                              height:
                                                  mediaquery.size.height * 0.15,
                                              width: mediaquery.size.width,
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: (mediaquery
                                                                  .size.height -
                                                              mediaquery.padding
                                                                  .top) *
                                                          0.01,
                                                      left: (mediaquery
                                                                  .size.width -
                                                              mediaquery.padding
                                                                  .left) *
                                                          0.050,
                                                      right: (mediaquery
                                                                  .size.width -
                                                              mediaquery.padding
                                                                  .right) *
                                                          0.050,
                                                      bottom: (mediaquery
                                                                  .size.width -
                                                              mediaquery.padding
                                                                  .right) *
                                                          0.03,
                                                    ),
                                                    child: Divider(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                '${cards[index]['circleimage']}'),
                                                        radius: 25,
                                                      ),
                                                      CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                '${cards[index]['circleimage']}'),
                                                        radius: 25,
                                                      ),
                                                      CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                '${cards[index]['circleimage']}'),
                                                        radius: 25,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                        },
                        child: Card(
                            elevation: 0.9,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                      horizontal: (mediaquery.size.width -
                                              mediaquery.padding.horizontal) *
                                          0.01,
                                    )),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                          vertical: (mediaquery.size.height -
                                                  mediaquery.padding.vertical) *
                                              0.01,
                                        )),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              '${cards[index]['circleimage']}'),
                                          radius: 30,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                      horizontal: (mediaquery.size.width -
                                              mediaquery.padding.horizontal) *
                                          0.02,
                                    )),
                                    Flexible(
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                            vertical: (mediaquery.size.height -
                                                    mediaquery
                                                        .padding.vertical) *
                                                0.012,
                                          )),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                '${cards[index]['title']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .title,
                                              ),
                                              Text(
                                                '${cards[index]['subtitle']}',
                                                softWrap: true,
                                                maxLines: 3,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .body1,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: (mediaquery.size.height -
                                            mediaquery.padding.top) *
                                        0.02,
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
                                Padding(
                                    padding: EdgeInsets.only(
                                  top: (mediaquery.size.height -
                                          mediaquery.padding.top) *
                                      0.02,
                                )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 30),
                                        Text(
                                          'Rating : $_rating',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subhead,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text('VIEW DETALIS'),
                                        Icon(Icons.arrow_forward,
                                            color:
                                                Theme.of(context).accentColor,
                                            size: 27),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
