import 'package:flutter/material.dart';
//import 'package:premedic/models/chroniclist.dart';

class Listiew extends StatelessWidget {
  final constraint;
  Listiew(this.constraint);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    //  List<ChronicList> chronic = [
    //    ChronicList(name: " one", image: Image.asset('assets/information.png')),
    //    ChronicList(name: " Two", image: Image.asset('assets/information.png')),
    //    ChronicList(name: " Three", image: Image.asset('assets/information.png')),
    // ];

    return  Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            height:mediaQuery.size.height*0.15,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(left:8.0,right: 8.0),
                   child: Container(
                       height: mediaQuery.size.height * 0.15,
                        width:mediaQuery.size.width * 0.40,
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

                    
                    ],),),
                 ),
                   Padding(
                   padding: const EdgeInsets.only(left:8.0,right: 8.0),
                   child: Container(
                      height: mediaQuery.size.height * 0.15,
                        width:mediaQuery.size.width * 0.40,
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

                    
                    ],),),
                 ),
                   Padding(
                   padding: const EdgeInsets.only(left:8.0,right: 8.0),
                   child: Container(
                      height: mediaQuery.size.height * 0.15,
                        width:mediaQuery.size.width * 0.40,
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

                    
                    ],),),
                 ),
                  
              ],
           ),  );
      
  }
}
