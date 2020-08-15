import 'package:flutter/material.dart';

import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

class ChronicDiseasesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final diseases = Provider.of<User>(context).diseases;

    return Container(
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: diseases.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
              left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.03,
              right: (mediaQuery.size.width - mediaQuery.padding.right) * 0.03,
              bottom:
                  (mediaQuery.size.height - mediaQuery.padding.bottom) * 0.01,
            ),
            child: Container(
              width: mediaQuery.size.width * 0.5,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.00, 3.00),
                    color: Color(0xff000000).withOpacity(0.16),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(70),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(diseases[index].imgUrl),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: (mediaQuery.size.height -
                                  mediaQuery.padding.top) *
                              0.01)),
                  Text(diseases[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
