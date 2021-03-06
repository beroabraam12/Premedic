import 'package:flutter/material.dart';
import 'package:premedic/components/Pharmacies/dropdown_list.dart';

import '../components/Hospital_Clinc/filter.dart';
import '../components/Hospital_Clinc/search.dart';
import '../components/Hospital_Clinc/hosptial_clinc_card.dart';
import '../pages/home.dart';

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
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
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
                          left: (mediaquery.size.width -
                                  mediaquery.padding.left) *
                              0.03,
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: Theme.of(context).iconTheme.size,
                          ),
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          })
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
                        'Clinics',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                        top: (mediaquery.size.height - mediaquery.padding.top) *
                            0.03,
                      )),
                      DropdownPharmacy(),
                      Padding(
                          padding: EdgeInsets.only(
                        top: (mediaquery.size.height - mediaquery.padding.top) *
                            0.03,
                      )),
                      FilterRow(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: (mediaquery.size.height -
                                  mediaquery.padding.top) *
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
          ),
        ));
  }
}
