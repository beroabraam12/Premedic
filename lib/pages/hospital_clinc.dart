import 'package:flutter/material.dart';

import '../components/Hospital_Clinc/filter.dart';
import '../components/Hospital_Clinc/dropdownlist.dart';
import '../components/Hospital_Clinc/search.dart';
import '../components/Hospital_Clinc/hosptial_clinc_card.dart';

class HospitalsClinicsPage extends StatefulWidget {
  static final routeName = "/hospitals-clinc";
  @override
  _HospitalsClinicsPageState createState() => _HospitalsClinicsPageState();
}

class _HospitalsClinicsPageState extends State<HospitalsClinicsPage> {
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
                  children: <Widget>[
                    Text(
                      'Hospitals & Clinics',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.03,
                    )),
                    Dropdown(),
                    Padding(
                        padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.03,
                    )),
                    FilterRow(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: (mediaquery.size.height - mediaquery.padding.top) *
                            0.03,
                      ),
                    ),
                    Search(),
                    Container(
                      width: mediaquery.size.width * 0.9,
                      child: HospitalClincCards(),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
