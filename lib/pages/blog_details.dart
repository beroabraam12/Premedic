import 'package:flutter/material.dart';

import '../models/blog_detail_model.dart';
import '../pages/blogs.dart';

class BlogDetailsPage extends StatefulWidget {
  static final routeName = "/blogs-details";

  @override
  _BlogDetailsPageState createState() => _BlogDetailsPageState();
}

class _BlogDetailsPageState extends State<BlogDetailsPage> {
  @override
  Widget build(BuildContext context) {
    List<BlogDetailsModel> blogDetailModel = List();
    blogDetailModel.add(BlogDetailsModel(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
        "Blog Title",
        'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
        'Author Name',
        '3 hours ago',
        '1.3K'));
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: mediaquery.size.width,
                child: ListView.builder(
                    itemCount: blogDetailModel.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: mediaquery.size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: mediaquery.size.width,
                              height: mediaquery.size.height * 0.25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('assets/background-01.png'),
                                fit: BoxFit.cover,
                              )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                        top: (mediaquery.size.height -
                                                mediaquery.padding.top) *
                                            0.02,
                                        left: (mediaquery.size.width -
                                                mediaquery.padding.left) *
                                            0.02,
                                      ),
                                      child: IconButton(
                                          icon: Icon(Icons.arrow_back,
                                              size: Theme.of(context)
                                                  .iconTheme
                                                  .size,
                                              color: Colors.white),
                                          onPressed: () {
                                            Navigator.pop(
                                              context,
                                            );
                                          })),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: (mediaquery.size.height -
                                                mediaquery.padding.top) *
                                            0.029),
                                    child: Center(
                                        child: Text(
                                      blogDetailModel[index].blogTitle,
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: (mediaquery.size.height -
                                        mediaquery.padding.top) *
                                    0.029,
                                left: (mediaquery.size.width -
                                        mediaquery.padding.left) *
                                    0.029,
                                right: (mediaquery.size.width -
                                        mediaquery.padding.left) *
                                    0.029,
                              ),
                              child: Text(
                                blogDetailModel[index].blogSubtitle,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: (mediaquery.size.height -
                                        mediaquery.padding.top) *
                                    0.05,
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
                                  0.04,
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.edit,
                                        size: 20,
                                        color: Theme.of(context).accentColor),
                                    Text(
                                        'Author: ' +
                                            blogDetailModel[index].authorName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.access_time,
                                        size: 20,
                                        color: Theme.of(context).accentColor),
                                    Text(blogDetailModel[index].blogTime,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                              top: (mediaquery.size.height -
                                      mediaquery.padding.top) *
                                  0.05,
                            )),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 70,
                            ),
                            Text(blogDetailModel[index].blogLoveCount,
                                style: Theme.of(context).textTheme.bodyText2),
                            Padding(
                                padding: EdgeInsets.only(
                              top: (mediaquery.size.height -
                                      mediaquery.padding.top) *
                                  0.05,
                            )),
                          ],
                        ),
                      );
                    }))));
  }
}
