import 'package:flutter/material.dart';
import 'package:premedic/components/customIcons/custom_icon_icons.dart';

class HomePage extends StatefulWidget {
  static final routeName = '/';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 370.00,
            width: 375.00,
            decoration: BoxDecoration(
              color: Color(0xff31a6c3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150.00),
                bottomRight: Radius.circular(130.00),
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.10,
                  ),
                ),
                Container(
                  width: mediaQuery.size.width,
                  margin: EdgeInsets.symmetric(),
                  child: Center(
                    child: Text("Check Medicine Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width,
                  margin: EdgeInsets.symmetric(),
                  child: Center(
                    child: Text("Enter the medicine name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ),
                ),
                Container(
                  width: mediaQuery.size.width,
                  margin: EdgeInsets.symmetric(),
                  child: Center(
                    child: Text("or scan it using barcode",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.05,
                  ),
                ),
                Container(
                  height: 48.00,
                  width: 250,
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
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: "Enter Medicine name ",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.05,
                  ),
                ),
                Container(
                  width: 70.0,
                  height: 70.0,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).accentColor,
                  ),
                  child: Icon(
                    CustomIcon.barcode,
                    color: Colors.white,
                    size: Theme.of(context).iconTheme.size,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 139.00,
                    width: 146.00,
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
              children: <Widget>[
                Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
                 Center(
            child: Container(
              child: Image(image: AssetImage('assets/information.png')),
            ),
          ),
           Center(
            child: Container(
              child: Text("Medical Profile"),
            ),
          ),

                
                ],),)),

                  
                
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 139.00,
                    width: 146.00,
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
              children: <Widget>[
                Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
                 Center(
            child: Container(
              child: Image(image: AssetImage('assets/doctor.png')),
            ),
          ),
           Center(
            child: Container(
              child: Text("Hospitals & Clinics",),
            
            ),
          ),

                
                ],),
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 139.00,
                    width: 146.00,
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
              children: <Widget>[
                Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
                 Center(
            child: Container(
              child: Image(image: AssetImage('assets/pharmacy.png')),
            ),
          ),
           Center(
            child: Container(
              child: Text("Pharmcies"),
            ),
          ),

                
                ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 139.00,
                    width: 146.00,
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
              children: <Widget>[
                Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
                 Center(
            child: Container(
              child: Image(image: AssetImage('assets/pharm.png')),
            ),
          ),
           Center(
            child: Container(
              child: Text("Medical Blogs"),
            ),
          ),

                
                ],),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
