import 'package:flutter/material.dart';

class HospitalDialogCardDays extends StatefulWidget {
  @override
  _HospitalDialogCardDaysState createState() => _HospitalDialogCardDaysState();
}

class _HospitalDialogCardDaysState extends State<HospitalDialogCardDays> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Container(
      height: mediaquery.size.height * 0.35,
      width: mediaquery.size.width,
      child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 3,
          ),
          children: <Widget>[
            Card(
              elevation: 9,
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
              color: Theme.of(context).accentColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                color: Theme.of(context).accentColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('SAT'),
                    Text('Holiday'),
                  ],
                ))
          ]),
    );
  }
}
