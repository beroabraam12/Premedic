/* import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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

    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Column(
          children: <Widget>[
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: cards.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: mediaquery.size.height * 0.25,
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
                                              softWrap:true,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 30),
                                    Text('${cards[index]['rating']}'),
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
                  );
                })
          ],
        )
      ],
    );
  }
} */

import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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
      {
        'title': "Hospital Name",
        'subtitle': 'notes bla bla bla bla bla',
        'rating': 'Rating NO.',
        'circleimage':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
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
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: mediaquery.size.height * 0.25,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 30),
                                    Text('${cards[index]['rating']}'),
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
                  );
                }),
          ],
        )
      ],
    );
  }
}
