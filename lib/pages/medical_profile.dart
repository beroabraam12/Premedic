import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:premedic/pages/patient_profile.dart';
import 'package:premedic/provider/medical.dart';
import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

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
  void initState() {
    Provider.of<Medical>(context, listen: false)
        .getChronicAndMedicine(context)
        .then(
          (value) {},
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final user = Provider.of<User>(context);
    final medical = Provider.of<Medical>(context);
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
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
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
                            user.user.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                              "Last Update at ${DateFormat("EEEE, MMMM d").format(user.user.updatedAt)}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              )),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(user.user.avater),
                        radius: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            PatientInfo(user),
            Padding(
                padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.01)),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        (mediaQuery.size.width - mediaQuery.padding.left) *
                            0.05,
                  ),
                  child: Text('Chronic Diseases',
                      style: Theme.of(context).textTheme.headline4),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return StatefulBuilder(
                            builder: (ctx, setState) => Dialog(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: mediaQuery.size.height * 0.7,
                                child: Column(
                                  children: [
                                    Text("Choose Diseases"),
                                    SizedBox(
                                      height: mediaQuery.size.height * 0.01,
                                    ),
                                    Container(
                                      height: mediaQuery.size.height * 0.5,
                                      child: ListView.builder(
                                          itemCount: medical.diseases.length,
                                          itemBuilder: (context, index) {
                                            return Row(
                                              children: [
                                                Checkbox(
                                                  value: medical
                                                      .diseases[index].selected,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      medical.diseases[index]
                                                          .selected = v;
                                                    });
                                                  },
                                                ),
                                                Text(medical
                                                    .diseases[index].name),
                                              ],
                                            );
                                          }),
                                    ),
                                    RaisedButton(
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      onPressed: () {
                                        medical.submitDiseases(context);
                                      },
                                      child: Text("Submit"),
                                      textColor: Colors.white,
                                      color: Theme.of(context).accentColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
            ),
            ChronicDiseasesList(),
            Padding(
                padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03)),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        (mediaQuery.size.width - mediaQuery.padding.left) *
                            0.05,
                  ),
                  child: Text('Medicines',
                      style: Theme.of(context).textTheme.headline4),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (ctx) {
                          return StatefulBuilder(
                            builder: (ctx, setState) => Dialog(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: mediaQuery.size.height * 0.7,
                                child: Column(
                                  children: [
                                    Text("Choose Medicines"),
                                    SizedBox(
                                      height: mediaQuery.size.height * 0.01,
                                    ),
                                    Container(
                                      height: mediaQuery.size.height * 0.5,
                                      child: ListView.builder(
                                          itemCount: medical.medicines.length,
                                          itemBuilder: (context, index) {
                                            return Row(
                                              children: [
                                                Checkbox(
                                                  value: medical
                                                      .medicines[index]
                                                      .selected,
                                                  onChanged: (v) {
                                                    setState(() {
                                                      medical.medicines[index]
                                                          .selected = v;
                                                    });
                                                  },
                                                ),
                                                Text(medical
                                                    .medicines[index].name),
                                              ],
                                            );
                                          }),
                                    ),
                                    RaisedButton(
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      onPressed: () {
                                        medical.submitMedicines(context);
                                      },
                                      child: Text("Submit"),
                                      textColor: Colors.white,
                                      color: Theme.of(context).accentColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ],
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
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(PatientProfilePage.routeName);
                  },
                  color: Theme.of(context).accentColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'VIEW PRESCRIPTIONS',
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
