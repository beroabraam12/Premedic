import 'package:flutter/material.dart';

class VerificationPhone extends StatelessWidget {
  final constraint;
  VerificationPhone(this.constraint);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Color(0xFFFFFFFF),
      elevation: 2,
      child: Column(
        children: <Widget>[
           Center(
             child: Container(
              child: Image(image: AssetImage('assets/Logo.png')),
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
        
        ],
      ),
    );
  }
}
