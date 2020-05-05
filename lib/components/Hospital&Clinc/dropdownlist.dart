import 'package:flutter/material.dart';
import 'package:premedic/Models/dropdownlistCity.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    List<City> cities = [
      new City(name: " Maadi ,Cairo", icon: Icons.location_on),
      new City(name: "paris", icon: Icons.location_on),
      new City(name: "new york", icon: Icons.location_on),
    ];

    int index = 0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: mediaquery.size.width * 0.7,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                )
              ],
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              alignedDropdown: true,
              child: DropdownButton(
                  icon: Icon(Icons.arrow_drop_down),
                  isExpanded: false,
                  value: cities[index],
                  items: cities.map((City value) {
                    return new DropdownMenuItem(
                      value: value,
                      child: new Row(
                        children: <Widget>[
                          new Icon(
                            value.icon,
                          ),
                          new Text(value.name)
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (City value) {
                    setState(() {
                      index = cities.indexOf(value);
                    });
                  }),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    (mediaquery.size.width - mediaquery.padding.horizontal) *
                        0.01)),
        Icon(Icons.explore, size: 50, color: Theme.of(context).accentColor),
      ],
    );
  }
}