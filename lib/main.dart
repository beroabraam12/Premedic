import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:premedic/provider/user.dart';
import 'package:provider/provider.dart';

import './pages/password_reset.dart';
import './pages/code_verification.dart';
import './pages/home.dart';
import './pages/blog_details.dart';
import './pages/hospital_clinc.dart';
import './pages/login.dart';
import './pages/medical_profile.dart';
import './pages/patient_profile.dart';
import './pages/pharmacies.dart';
import './pages/phone_verification.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: User(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: TextTheme(
              headline5: TextStyle(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 12.9,
              ),
              headline6: TextStyle(
                  color: Colors.black, fontSize: 23, letterSpacing: 0.5),
              overline: TextStyle(
                color: Color(0x60000000),
                fontSize: 12,
              ),
              bodyText2: TextStyle(
                fontSize: 16,
                color: Colors.black38,
                letterSpacing: 0.5,
              ),
              bodyText1: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                letterSpacing: 0.25,
              ),
              headline1: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
              headline2: TextStyle(
                  fontSize: 20, color: Colors.black, letterSpacing: 0.25),
              subtitle2: TextStyle(
                fontSize: 16,
                color: Colors.black,
                letterSpacing: 0.15,
              ),
              button: TextStyle(
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
              subtitle1: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                letterSpacing: 1,
              ),
              headline4: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              headline3: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            iconTheme: IconThemeData(
              size: 30,
              color: Theme.of(context).accentColor,
            ),
            accentColor: Color(0xFFDE6161),
            primaryColor: Color(0xFF31A6C3),
            primarySwatch: Colors.blue,
          ),
          routes: {
            LoginPage.routeName: (BuildContext context) => LoginPage(),
            RegestrationPage.routeName: (BuildContext context) =>
                RegestrationPage(),
            PhoneVerificationPage.routeName: (BuildContext context) =>
                PhoneVerificationPage(),
            LoginPage.routeName: (BuildContext context) => LoginPage(),
            MedicalProfilePage.routeName: (BuildContext context) =>
                MedicalProfilePage(),
            HospitalsClinicsPage.routeName: (BuildContext context) =>
                HospitalsClinicsPage(),
            PharmaciesPage.routeName: (BuildContext context) =>
                PharmaciesPage(),
            BlogsPage.routeName: (BuildContext context) => BlogsPage(),
            BlogDetailsPage.routeName: (BuildContext context) =>
                BlogDetailsPage(),
            PatientProfilePage.routeName: (BuildContext context) =>
                PatientProfilePage(),
            HomePage.routeName: (BuildContext context) => HomePage(),
            CodeVerificationPage.routeName: (BuildContext context) =>
                CodeVerificationPage(),
            PasswordResetPage.routeName: (BuildContext context) =>
                PasswordResetPage(),
          }),
    );
  }
}
