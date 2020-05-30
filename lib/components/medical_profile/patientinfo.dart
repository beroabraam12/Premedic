import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: mediaQuery.size.height * 0.14,
                    width: mediaQuery.size.width * 0.14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(
                    left: (mediaQuery.size.width-mediaQuery.padding.left)*0.03
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('23',style: Theme.of(context).textTheme.headline4),
                      Text('Age')
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: mediaQuery.size.height * 0.14,
                      width: mediaQuery.size.width * 0.14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Image(image: AssetImage('assets/height.png'))),
                      Padding(padding: EdgeInsets.only(
                    left: (mediaQuery.size.width-mediaQuery.padding.left)*0.03
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('188',style: Theme.of(context).textTheme.headline4),
                      Text('Height')
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(
             horizontal: (mediaQuery.size.width-mediaQuery.padding.horizontal)*0.08
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                   Container(
                      height: mediaQuery.size.height * 0.14,
                      width: mediaQuery.size.width * 0.14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Image(image: AssetImage('assets/blood.png'))),
                      Padding(padding: EdgeInsets.only(
                    left: (mediaQuery.size.width-mediaQuery.padding.left)*0.03
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('B+',style: Theme.of(context).textTheme.headline4),
                      Text('Blood Type')
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: mediaQuery.size.height * 0.14,
                      width: mediaQuery.size.width * 0.14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Image(image: AssetImage('assets/weight.png'))),
                      Padding(padding: EdgeInsets.only(
                    left: (mediaQuery.size.width-mediaQuery.padding.left)*0.03
                  )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('82',style: Theme.of(context).textTheme.headline4),
                      Text('Weight')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
