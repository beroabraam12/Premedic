import 'package:flutter/material.dart';

import '../components/customIcons/custom_icon_icons.dart';
import './medical_profile.dart';
import './hospital_clinc.dart';
import './pharmacies.dart';
import './blogs.dart';

class HomePage extends StatefulWidget {
  static final routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(),
      body: Container(
        height: mediaQuery.size.height,
        width: mediaQuery.size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: mediaQuery.size.height * 0.5,
                    width: mediaQuery.size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: (mediaQuery.size.height -
                                    mediaQuery.padding.top) *
                                0.02,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: (mediaQuery.size.width -
                                    mediaQuery.padding.left) *
                                0.03,
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                _scaffoldKey.currentState.openDrawer();
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: (mediaQuery.size.height -
                                    mediaQuery.padding.top) *
                                0.02,
                          ),
                        ),
                        Center(
                          child: Text("Check Medicine Details",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: (mediaQuery.size.height -
                                    mediaQuery.padding.top) *
                                0.01,
                          ),
                        ),
                        Center(
                          child: Text(
                              "Enter the medicine name\nor scan it using barcode",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: (mediaQuery.size.height -
                                    mediaQuery.padding.top) *
                                0.05,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: (mediaQuery.size.width -
                                    mediaQuery.padding.horizontal) *
                                0.7,
                            height: mediaQuery.size.height * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(0xff000000).withOpacity(0.16),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30.00),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintStyle:
                                      Theme.of(context).textTheme.headline3,
                                  hintText: 'Enter Medicine name',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: (mediaQuery.size.width -
                                            mediaQuery.padding.horizontal) *
                                        0.05,
                                    vertical: (mediaQuery.size.height -
                                            mediaQuery.padding.vertical) *
                                        0.025,
                                  )),
                              keyboardType: TextInputType.text,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: (mediaQuery.size.height -
                                    mediaQuery.padding.top) *
                                0.05,
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).accentColor,
                            ),
                            child: Icon(
                              CustomIcon.barcode,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (mediaQuery.size.height - mediaQuery.padding.top) *
                          0.03,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.05,
                      right:
                          (mediaQuery.size.width - mediaQuery.padding.right) *
                              0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MedicalProfilePage()),
                            );
                          },
                          child: Container(
                            height: mediaQuery.size.height * 0.2,
                            width: mediaQuery.size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(0xff000000).withOpacity(0.16),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50.00),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image:
                                        AssetImage('assets/information.png')),
                                Padding(
                                    padding: EdgeInsets.only(
                                  top: (mediaQuery.size.height -
                                          mediaQuery.padding.top) *
                                      0.01,
                                )),
                                Text("Medical Profile"),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: (mediaQuery.size.width -
                                        mediaQuery.padding.horizontal) *
                                    0.02)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HospitalsClinicsPage()),
                            );
                          },
                          child: Container(
                            height: mediaQuery.size.height * 0.2,
                            width: mediaQuery.size.width * 0.45,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(0xff000000).withOpacity(0.16),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50.00),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage('assets/doctor.png')),
                                Padding(
                                    padding: EdgeInsets.only(
                                  top: (mediaQuery.size.height -
                                          mediaQuery.padding.top) *
                                      0.01,
                                )),
                                Text(
                                  "Hospitals & Clinics",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  )),
                  Padding(
                    padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.05,
                      right:
                          (mediaQuery.size.width - mediaQuery.padding.right) *
                              0.05,
                      bottom:
                          (mediaQuery.size.height - mediaQuery.padding.bottom) *
                              0.03,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PharmaciesPage()),
                            );
                          },
                          child: Container(
                            height: mediaQuery.size.height * 0.18,
                            width: mediaQuery.size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(0xff000000).withOpacity(0.16),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage('assets/pharmacy.png')),
                                Padding(
                                    padding: EdgeInsets.only(
                                  top: (mediaQuery.size.height -
                                          mediaQuery.padding.top) *
                                      0.01,
                                )),
                                Text("Pharmcies"),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: (mediaQuery.size.width -
                                        mediaQuery.padding.horizontal) *
                                    0.03)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogsPage()),
                            );
                          },
                          child: Container(
                            height: mediaQuery.size.height * 0.18,
                            width: mediaQuery.size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(0xff000000).withOpacity(0.16),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(50.00),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage('assets/pharm.png')),
                                Padding(
                                    padding: EdgeInsets.only(
                                  top: (mediaQuery.size.height -
                                          mediaQuery.padding.top) *
                                      0.01,
                                )),
                                Text("Medical Blogs"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
