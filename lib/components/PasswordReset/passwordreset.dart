import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  final constraint;
  PasswordReset(this.constraint);
  @override
  Widget build(BuildContext context) {
       var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Color(0xFFFFFFFF),
      elevation: 2,
      child: Column(
        children: <Widget>[
           Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.09,
                  ),
                ),
           Center(
             child: Container(
              child: Image(image: AssetImage('assets/Logo.png')),
          ),
           ),
           Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03,
                  ),
                ),
            Column(
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
           Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03,
                  ),
                ),
           Column(
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
           Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03,
                    bottom: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03,
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
                style: Theme.of(context).textTheme.title,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          )),
         Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03,
                    bottom: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.03,
                  ),
                ),
        ],
      ),
    );
  }
}
