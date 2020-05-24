import 'package:flutter/material.dart';
import 'package:premedic/pages/blog_details.dart';

import '../components/Blogs/search.dart';
import '../components/Blogs/card.dart';

class BlogsPage extends StatefulWidget {
  static final routeName = "/blogs";
  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(
            width: mediaquery.size.width,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaquery.size.height - mediaquery.padding.top) *
                        0.07,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left:
                            (mediaquery.size.width - mediaquery.padding.left) *
                                0.07,
                      ),
                    ),
                    Icon(
                      Icons.arrow_back,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaquery.size.height - mediaquery.padding.top) *
                        0.03,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Blogs',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.03,
                    )),
                    SearchBlogs(),
                  ],
                ),
                Container(
                  width: mediaquery.size.width,
                  height: mediaquery.size.height,
                  child: GestureDetector(
                    child: BlogCard(),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlogDetailsPage()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
