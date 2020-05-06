import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  final constraint;
  DiscountCard(this.constraint);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(70.00),
      ),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          // SizedBox(
          //   width: constraint.maxWidth * 0.05,
          // ),
          Container(
            child: Image(image: AssetImage('assets/Logo.png')),
          ),
          SizedBox(
            width: constraint.maxWidth * 0.05,
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
          Column(
            children: <Widget>[
              SizedBox(
                height: constraint.maxHeight * 0.25,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.lock,
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
              child: Padding(
            padding: const EdgeInsets.only(left: 180.0),
            child: Text(
              'Forget Password!',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Theme.of(context).accentColor,
              ),
            ),
          )),
          Container(
              child: SizedBox(
            width: 200,
            height: 40.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: new Text(
                "Login",
                style: Theme.of(context).textTheme.title,
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          )),
          Column(
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 102.0),
                      child: Text(
                        "Don't have account? ",
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    )),
                    Container(
                      child: Text(
                        "Register now!",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "OR",
                  style: Theme.of(context).textTheme.subtitle,
                ),
              ),
              Container(
                  child: SizedBox(
                width: 191,
                height: 31.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: new Text(
                    "Login",
                    style: Theme.of(context).textTheme.title,
                  ),
                  color: Theme.of(context).accentColor,
                  onPressed: () {},
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
