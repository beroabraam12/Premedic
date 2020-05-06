import 'package:flutter/material.dart';
import 'package:premedic/models/city.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    List<CityModel> cities = [
       CityModel(name: " Maadi ,Cairo", icon: Icons.location_on),
       CityModel(name: "paris", icon: Icons.location_on),
       CityModel(name: "new york", icon: Icons.location_on),
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
                items: cities.map(
                  (CityModel value) {
                    return  DropdownMenuItem(
                      value: value,
                      child:  Row(
                        children: <Widget>[
                           Icon(
                            value.icon,
                          ),
                           Text(value.name)
                        ],
                      ),
                    );
                  },
                ).toList(),
                onChanged: (CityModel value) {
                  setState(
                    () {
                      index = cities.indexOf(value);
                    },
                  );
                },
              ),
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
