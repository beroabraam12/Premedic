import 'package:flutter/material.dart';
import 'package:premedic/components/PatientInfo/listview.dart';
import 'package:premedic/components/PatientInfo/patientinfo.dart';

class PatientPage extends StatefulWidget {
  static final routeName = '/';
  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: mediaQuery.size.height * 0.15,
            decoration: BoxDecoration(
              color: Color(0xff31a6c3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.00),
                bottomRight: Radius.circular(50.00),
              ),
            ),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.07,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(),
                      child: Text(
                        "Patiant Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(),
                        child: Text("Profile last Update 20/02/2020",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Center(
                    child: Container(
                      height: mediaQuery.size.height * 0.50,
                      width: mediaQuery.size.width * 0.10,
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: mediaQuery.size.width,
                  margin: EdgeInsets.symmetric(
                    vertical:
                        (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
                  ),
                  decoration: BoxDecoration(
                  ),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraint) {
                      return PatientInfo(constraint);
                    },
                  ),
                ),
            ),
              
          
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Container(
                        margin: EdgeInsets.symmetric(),
                        child: Text(
                          "Chronic Diseases",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
          ),
       Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
                ),
                decoration: BoxDecoration(
                ),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraint) {
                    return Listiew(constraint);
                  },
                ),
              ),
         Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Container(
                        margin: EdgeInsets.symmetric(),
                        child: Text(
                          "Medicines",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
          ),
       Container(
                width: mediaQuery.size.width,
                margin: EdgeInsets.symmetric(
                  vertical:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
                ),
                decoration: BoxDecoration(
                ),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraint) {
                    return Listiew(constraint);
                  },
                ),
              ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              child: SizedBox(
               
                height: mediaQuery.size.height*0.05,
                child: RaisedButton(
                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
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
            ),
        
        ],
      ),
    );
  }
}
