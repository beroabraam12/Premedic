import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/blog_details.dart';
import './pages/hospital_clinc.dart';
import './pages/login.dart';
import './pages/patient.dart';
import './pages/patient_profile.dart';
import './pages/pharmacies.dart';
import './pages/phoneverification.dart';
import './pages/regestration.dart';
import './pages/blogs.dart';

void main() {
  runApp(MyApp());
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitUp,
  ]);  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline: TextStyle(
            color: Colors.black,
            fontSize:20,
            letterSpacing: 12.9,
          ),
          title: TextStyle(
            color: Colors.black87,
            fontSize: 25,
            letterSpacing: 0.5
          ),
          overline: TextStyle(
            color:Color(0x60000000),
            fontSize:12,
          ),
          body1: TextStyle(
            fontSize: 16,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
          body2:  TextStyle(
            fontSize: 14,
            color: Colors.black54,
            letterSpacing: 0.25,
          ),
          display4: TextStyle(
            fontSize: 24,
            color:Colors.black,
          ),
          display3: TextStyle(
            fontSize:20,
            color:Colors.black,
            letterSpacing: 0.25
          ),
          subtitle:  TextStyle(
            fontSize: 16,
            color: Colors.black,
            letterSpacing: 0.15,
          ),
           button:  TextStyle(
            fontSize: 16,
            color: Color(0xFFFAFAFA),
            letterSpacing: 0.15,
          ),
          caption: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.grey[300],
            letterSpacing: 2,
          ),
          subhead: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1,
          ),
          display1: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          )
        ),
        iconTheme: IconThemeData(
          size: 30,
          color:Theme.of(context).accentColor,
        ),
        accentColor: Color(0xFFDE6161),
        primaryColor: Color(0xFF31A6C3),
        primarySwatch: Colors.blue,
      ),
      
    
      routes:{
        RegestrationPage.routeName: (BuildContext ctx)=>RegestrationPage(),
        PhoneVerificationPage.routeName: (BuildContext ctx)=>PhoneVerificationPage(),
        LoginPage.routeName: (BuildContext ctx)=>LoginPage(),
        PatientPage.routeName: (BuildContext ctx)=>PatientPage(),
        HospitalsClinicsPage.routeName:(BuildContext context) => HospitalsClinicsPage(),
        PharmaciesPage.routeName:(BuildContext context) => PharmaciesPage(),
        BlogsPage.routeName:(BuildContext context) => BlogsPage(),
        BlogDetailsPage.routeName:(BuildContext context) => BlogDetailsPage(),
        PatientProfilePage.routeName:(BuildContext context) => PatientProfilePage(),
      }
    );
  }
}