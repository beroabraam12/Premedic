import 'package:flutter/material.dart';

import 'package:premedic/models/blogs_model.dart';

class BlogCard extends StatefulWidget {
  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    List<BlogsModelCards> blogModelCardList = List();
    blogModelCardList.add(BlogsModelCards(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
        "Blog Title",
        'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
        'Author Name',
        '3 hours ago'));
    blogModelCardList.add(BlogsModelCards(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
        "Blog Title",
        'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
        'Author Name',
        '3 hours ago'));
    var mediaquery = MediaQuery.of(context);
    return ListView.builder(
        itemCount: blogModelCardList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: mediaquery.size.width,
            height: mediaquery.size.height * 0.35,
            padding: EdgeInsets.symmetric(
              horizontal:
                  (mediaquery.size.width - mediaquery.padding.horizontal) *
                      0.04,
              vertical:
                  (mediaquery.size.height - mediaquery.padding.vertical) * 0.01,
            ),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: mediaquery.size.width,
                    height: mediaquery.size.height * 0.17,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage('assets/background-01.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: (mediaquery.size.width - mediaquery.padding.left) *
                          0.05,
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.02,
                    ),
                    child: Text(
                      blogModelCardList[index].blogTitle,
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.01,
                      left: (mediaquery.size.width - mediaquery.padding.left) *
                          0.050,
                      right:
                          (mediaquery.size.width - mediaquery.padding.right) *
                              0.050,
                    ),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.edit,
                                size: 20, color: Theme.of(context).accentColor),
                            Text(
                                'Author: ' +
                                    blogModelCardList[index].authorName,
                                style: Theme.of(context).textTheme.body1),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.access_time,
                                size: 20, color: Theme.of(context).accentColor),
                            Text(blogModelCardList[index].blogTime,
                                style: Theme.of(context).textTheme.body1),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}