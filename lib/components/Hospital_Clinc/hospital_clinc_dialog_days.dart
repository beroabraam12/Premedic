import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:premedic/models/weekday.dart';

class HospitalDialogCardDays extends StatefulWidget {
  @override
  _HospitalDialogCardDaysState createState() => _HospitalDialogCardDaysState();
}

class _HospitalDialogCardDaysState extends State<HospitalDialogCardDays> {
  List<WeekDayModel> dayes = [
    WeekDayModel(
      title: "SUN",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: false,
    ),
    WeekDayModel(
      title: "MON",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: false,
    ),
    WeekDayModel(
      title: "TUE",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: false,
    ),
    WeekDayModel(
      title: "WED",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: true,
    ),
    WeekDayModel(
      title: "THU",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: false,
    ),
    WeekDayModel(
      title: "FRI",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: false,
    ),
    WeekDayModel(
      title: "SAT",
      openTime: DateTime(
        0,
        0,
        0,
        7,
        0,
      ),
      closeTime: DateTime(
        0,
        0,
        0,
        8,
        30,
      ),
      holiday: true,
    )
  ];
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Container(
      height: mediaquery.size.height * 0.35,
      width: mediaquery.size.width,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => _dayCard(dayes[index]),
        itemCount: dayes.length,
      ),
    );
  }

  _dayCard(WeekDayModel day) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      color: day.holiday ? Color(0xffDE6161) : Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            day.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          day.holiday
              ? Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Holiday",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                )
              : Text(
                  DateFormat.jm().format(day.openTime),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
          day.holiday
              ? Container()
              : Text(
                  'to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
          day.holiday
              ? Container()
              : Text(
                  DateFormat.jm().format(day.closeTime),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
        ],
      ),
    );
  }
}
