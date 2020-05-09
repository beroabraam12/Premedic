import 'package:flutter/material.dart';

class VerificationPhone extends StatelessWidget {
  final constraint;
  VerificationPhone(this.constraint);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: Color(0xFFFFFFFF),
      elevation: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.10,
            ),
          ),
          Center(
            child: Container(
              child: Image(image: AssetImage('assets/Logo.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.phone_android,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
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
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 0.0),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: "Phone Number ",
                            ),
                            keyboardType: TextInputType.phone,
                           ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
            ),
          ),
          Container(
            child: SizedBox(
              width: 200,
              height: 40.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: new Text(
                  "SEND",
                  style: TextStyle(color: Colors.white),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
              bottom: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}
