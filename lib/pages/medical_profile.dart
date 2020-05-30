import 'package:flutter/material.dart';

import '../components/medical_profile/chronic_diseases_list.dart';
import '../components/medical_profile/patientinfo.dart';
import '../components/medical_profile/medicines_list.dart';
import '../pages/home.dart';

class MedicalProfilePage extends StatefulWidget {
  static final routeName = '/PatientInformation';
  @override
  _MedicalProfilePageState createState() => _MedicalProfilePageState();
}

class _MedicalProfilePageState extends State<MedicalProfilePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        child: ListView(
          children: <Widget>[
            Container(
              height: mediaQuery.size.height * 0.22,
              width: mediaQuery.size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: (mediaQuery.size.height - mediaQuery.padding.top) *
                          0.02,
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.02,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.01,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Patiant Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          Text("Profile last Update 20/02/2020",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              )),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y'),
                        radius: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            PatientInfo(),
            Padding(
                padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.01)),
            Padding(
              padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.05,
              ),
              child: Text('Chronic Diseases',
                  style: Theme.of(context).textTheme.headline4),
            ),
            ChronicDiseasesList(),
            Padding(
                padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03)),
            Padding(
              padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.05,
              ),
              child: Text('Medicines',
                  style: Theme.of(context).textTheme.headline4),
            ),
            MedicinesList(),
            Padding(
              padding: EdgeInsets.only(
                  top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
                  bottom: (mediaQuery.size.height - mediaQuery.padding.bottom) *
                      0.03,
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.05,
                  right: (mediaQuery.size.width - mediaQuery.padding.right) *
                      0.05),
              child: Container(
                width: mediaQuery.size.width * 0.5,
                height: mediaQuery.size.height * 0.07,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'VIEW PERCEPTIONS',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
