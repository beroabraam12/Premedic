/* import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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

    final List<Map<String, dynamic>> dates = [
      {
        'days': "SUN",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "MON",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "TUE",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "WED",
        'from': 'Holiday',
        'to': '',
        'color':'Colors.accents',
      },
      {
        'days': "THU",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "FRI",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "SAT",
        'from': 'Holiday',
        'to': '',
        'color':'Colors.accents',
      },
    ];

    var mediaquery = MediaQuery.of(context);
    return ListView(
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
                    height: mediaquery.size.height * 0.25,
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
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
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
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: (mediaquery
                                                                  .size.width -
                                                              mediaquery.padding
                                                                  .horizontal) *
                                                          0.01)),
                                              CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    '${cards[index]['circleimage']}'),
                                                radius: 20,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: (mediaquery.size.height -
                                                          mediaquery
                                                              .padding.top) *
                                                      0.05)),
                                          RatingBar(
                                            onRatingChanged: (double rating) {
                                              setState(() {
                                                _rating = rating;
                                              });
                                            },
                                            filledIcon: Icons.star,
                                            emptyIcon: Icons.star_border,
                                            halfFilledIcon: Icons.star_half,
                                            isHalfAllowed: true,
                                            filledColor: Colors.yellow,
                                            emptyColor: Colors.grey,
                                            halfFilledColor: Colors.yellow,
                                            initialRating: 0,
                                            maxRating: 5,
                                            size: 48,
                                          ),
                                          Text(
                                            'Perceptions Rating : $_rating',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subhead,
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: (mediaquery.size.height -
                                                          mediaquery
                                                              .padding.top) *
                                                      0.01)),
                                          Container(
                                            color: Colors.red,
                                            width: mediaquery.size.width,
                                            height:
                                                mediaquery.size.height * 0.57,
                                            child: GridView.builder(
                                                  physics:
                                               NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                             crossAxisCount: 3,
                                             //crossAxisSpacing: 7.0,
                                             //mainAxisSpacing: 7.0,
                                                  ),
                                                  itemCount: dates.length,
                                                  itemBuilder:
                                               (BuildContext context,
                                                   int index) {
                                             return Row(
                                               mainAxisAlignment:
                                                   MainAxisAlignment
                                                       .spaceBetween,
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                               children: <Widget>[
                                                 ClipRRect(
                                                   borderRadius: BorderRadius.circular(18),
                                                    child: Card( 
                                                     child: Container(
                                                       color: Colors.blue,
                                                       width: mediaquery
                                                               .size.width *
                                                           0.2,
                                                       height: mediaquery
                                                               .size.height *
                                                           0.1,
                                                       child: Column(
                                                         children: <Widget>[
                                                           Text(
                                                               '${dates[index]['days']}'),
                                                           Text(
                                                               '${dates[index]['to']}'),
                                                           Text(
                                                               '${dates[index]['from']}'),
                                                         ],
                                                       ),
                                                     ),
                                                   ),
                                                 )
                                               ],
                                             );
                                                  }),
                                          ),
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
                                                  mediaquery.padding.vertical) *
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
                                        style:
                                            Theme.of(context).textTheme.subhead,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text('VIEW DETALIS'),
                                      Icon(Icons.arrow_forward,
                                          color: Theme.of(context).accentColor,
                                          size: 27),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  );
                }),
          ],
        )
      ],
    );
  }
}
 */


import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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

    final List<Map<String, dynamic>> dates = [
      {
        'days': "SUN",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "MON",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "TUE",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "WED",
        'from': 'Holiday',
        'to': '',
        'color':'Colors.accents',
      },
      {
        'days': "THU",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "FRI",
        'from': '7:00 pm',
        'to': '8:30 pm',
        'color':'Colors.accents',
      },
      {
        'days': "SAT",
        'from': 'Holiday',
        'to': '',
        'color':'Colors.accents',
      },
    ];

    var mediaquery = MediaQuery.of(context);
    return ListView(
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
                    height: mediaquery.size.height * 0.25,
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
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
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
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: (mediaquery
                                                                  .size.width -
                                                              mediaquery.padding
                                                                  .horizontal) *
                                                          0.01)),
                                              CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    '${cards[index]['circleimage']}'),
                                                radius: 20,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: (mediaquery.size.height -
                                                          mediaquery
                                                              .padding.top) *
                                                      0.05)),
                                          RatingBar(
                                            onRatingChanged: (double rating) {
                                              setState(() {
                                                _rating = rating;
                                              });
                                            },
                                            filledIcon: Icons.star,
                                            emptyIcon: Icons.star_border,
                                            halfFilledIcon: Icons.star_half,
                                            isHalfAllowed: true,
                                            filledColor: Colors.yellow,
                                            emptyColor: Colors.grey,
                                            halfFilledColor: Colors.yellow,
                                            initialRating: 0,
                                            maxRating: 5,
                                            size: 48,
                                          ),
                                          Text(
                                            'Perceptions Rating : $_rating',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subhead,
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: (mediaquery.size.height -
                                                          mediaquery
                                                              .padding.top) *
                                                      0.01)),
                                          Container(
                                            color: Colors.red,
                                            width: mediaquery.size.width,
                                            height:
                                                mediaquery.size.height * 0.57,
                                            child: GridView(
                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                             crossAxisCount: 3,
                                             ),
                                             children: <Widget>[
                                               
                                             ],
                                            )
                                          ),
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
                                                  mediaquery.padding.vertical) *
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
                                        style:
                                            Theme.of(context).textTheme.subhead,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text('VIEW DETALIS'),
                                      Icon(Icons.arrow_forward,
                                          color: Theme.of(context).accentColor,
                                          size: 27),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  );
                }),
          ],
        )
      ],
    );
  }
}
