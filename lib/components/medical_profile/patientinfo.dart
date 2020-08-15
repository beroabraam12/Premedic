import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:premedic/provider/medical.dart';
import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

class PatientInfo extends StatefulWidget {
  final User user;
  PatientInfo(this.user);

  @override
  _PatientInfoState createState() => _PatientInfoState();
}

class _PatientInfoState extends State<PatientInfo> {
  DateTime date;
  void submit() {
    Navigator.of(context).pop();
    setState(() {});
  }

  String height = "", weight = "";
  String _bloodType = "nan";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    List<String> bloodTyps = [
      "A+",
      "A-",
      "B+",
      "B-",
      "AB+",
      "AB-",
      "O+",
      "O-",
      "nan"
    ];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mediaQuery.size.width * 0.02),
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Padding(
                      padding: EdgeInsets.only(
                          left: (mediaQuery.size.width -
                                  mediaQuery.padding.left) *
                              0.03)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          (DateTime.now().year -
                                  widget.user.user.birthDate.year)
                              .toString(),
                          style: Theme.of(context).textTheme.headline4),
                      Text('Age')
                    ],
                  ),
                  SizedBox(
                    width: mediaQuery.size.width * 0.01,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(bottom: mediaQuery.size.height * 0.02),
                    child: IconButton(
                      onPressed: () {
                        showDatePicker(
                          helpText: "Select Date of Birth",
                          confirmText: "Submit",
                          initialDate: DateTime(2000, 1, 1),
                          context: context,
                          firstDate: DateTime(1970, 1, 1),
                          lastDate: DateTime(2002, 1, 1),
                        ).then((pickedDate) {
                          if (pickedDate == null) {
                            return;
                          }
                          setState(() {
                            print(pickedDate);
                            date = pickedDate;
                            Provider.of<Medical>(context, listen: false)
                                .edit(birthdate: pickedDate, context: context);
                          });
                        });
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
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
                  Padding(
                      padding: EdgeInsets.only(
                          left: (mediaQuery.size.width -
                                  mediaQuery.padding.left) *
                              0.03)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.user.user.height,
                          style: Theme.of(context).textTheme.headline4),
                      Text('Height')
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(bottom: mediaQuery.size.height * 0.02),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                              child: StatefulBuilder(builder: (ctx, setState) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(10),
                              height: mediaQuery.size.height * 0.28,
                              width: mediaQuery.size.width,
                              child: Column(
                                children: [
                                  Text(
                                    "Enter your Height",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: mediaQuery.size.height * 0.02,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: mediaQuery.size.width * 0.1,
                                      ),
                                      Container(
                                        width: mediaQuery.size.width * 0.4,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            labelText: "Enter your Height",
                                            labelStyle: TextStyle(fontSize: 14),
                                          ),
                                          keyboardType: TextInputType.number,
                                          inputFormatters: <TextInputFormatter>[
                                            WhitelistingTextInputFormatter
                                                .digitsOnly
                                          ],
                                          onChanged: (c) {
                                            setState(() {
                                              height = c;
                                              print(height);
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: mediaQuery.size.width * 0.1,
                                      ),
                                      Text(
                                        "CM",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediaQuery.size.height * 0.04,
                                  ),
                                  RaisedButton(
                                    padding: EdgeInsets.all(10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    onPressed: () {
                                      Provider.of<Medical>(context,
                                              listen: false)
                                          .edit(
                                              height: height.toString(),
                                              context: context);
                                      submit();
                                    },
                                    child: Text("Submit"),
                                    textColor: Colors.white,
                                    color: Theme.of(context).accentColor,
                                  )
                                ],
                              ),
                            );
                          })),
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      (mediaQuery.size.width - mediaQuery.padding.horizontal) *
                          0.02)),
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
                  Padding(
                      padding: EdgeInsets.only(
                          left: (mediaQuery.size.width -
                                  mediaQuery.padding.left) *
                              0.02)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.user.user.bloodType,
                          style: Theme.of(context).textTheme.headline4),
                      Text(
                        'Blood Type',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(bottom: mediaQuery.size.height * 0.02),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              StatefulBuilder(builder: (context, setState) {
                            return Dialog(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  height: mediaQuery.size.height * 0.45,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Select Blood Type",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: mediaQuery.size.height * 0.02,
                                      ),
                                      GridView.count(
                                        shrinkWrap: true,
                                        childAspectRatio: 3,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        crossAxisCount: 2,
                                        children: List.generate(
                                          bloodTyps.length,
                                          (index) {
                                            return RadioListTile<String>(
                                              title: Text(
                                                bloodTyps[index].toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              value: bloodTyps[index],
                                              groupValue: _bloodType,
                                              onChanged: (String value) {
                                                setState(() {
                                                  _bloodType = value;
                                                });
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: mediaQuery.size.height * 0.02,
                                      ),
                                      RaisedButton(
                                        padding: EdgeInsets.all(10),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        onPressed: () {
                                          Provider.of<Medical>(context,
                                                  listen: false)
                                              .edit(
                                                  bloodType: _bloodType,
                                                  context: context);
                                          submit();
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
                          }),
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
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
                  Padding(
                      padding: EdgeInsets.only(
                          left: (mediaQuery.size.width -
                                  mediaQuery.padding.left) *
                              0.03)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.user.user.width,
                          style: Theme.of(context).textTheme.headline4),
                      Text('Weight')
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(bottom: mediaQuery.size.height * 0.02),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: StatefulBuilder(
                              builder: (ctx, setState) => Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.all(10),
                                height: mediaQuery.size.height * 0.25,
                                width: mediaQuery.size.width,
                                child: Column(
                                  children: [
                                    Text(
                                      "Enter your Weight",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: mediaQuery.size.height * 0.02,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: mediaQuery.size.width * 0.1,
                                        ),
                                        Container(
                                          width: mediaQuery.size.width * 0.4,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              labelText: "Enter your Weight",
                                              labelStyle:
                                                  TextStyle(fontSize: 14),
                                            ),
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              WhitelistingTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            onChanged: (c) {
                                              setState(() {
                                                weight = c;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: mediaQuery.size.width * 0.1,
                                        ),
                                        Text(
                                          "KG",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: mediaQuery.size.height * 0.04,
                                    ),
                                    RaisedButton(
                                      padding: EdgeInsets.all(10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      onPressed: () {
                                        Provider.of<Medical>(context,
                                                listen: false)
                                            .edit(
                                                weight: weight.toString(),
                                                context: context);
                                        submit();
                                      },
                                      child: Text("Submit"),
                                      textColor: Colors.white,
                                      color: Theme.of(context).accentColor,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
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
