import 'package:flutter/material.dart';

class VerificationCard extends StatelessWidget {
  final constraint;
  VerificationCard(this.constraint);
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
             Center(
             child: Container(
              child: Image(image: AssetImage('assets/Logo.png')),
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
                "VERIFY",
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
