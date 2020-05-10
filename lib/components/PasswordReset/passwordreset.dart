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
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.lock,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                     Container(
                        height: 48.00,
                        width: 236.86,
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
                        child:TextField(
 enabled: false, // to trigger disabledBorder
 decoration: InputDecoration(
   filled: true,
   fillColor: Color(0xFFF2F2F2),
   focusedBorder: OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(20)),
     borderSide: BorderSide(width: 1,color: Colors.white),
   ),
                        // child: TextField(
                        //   decoration: new InputDecoration(
                        //       border: new OutlineInputBorder(
                        //         borderRadius: const BorderRadius.all(
                        //           const Radius.circular(10.0),
                        //         ),
                        //       ),
                        //       filled: true,
                        //       hintStyle: new TextStyle(color: Colors.grey[800]),
                        //       hintText: "Password",
                        //       fillColor: Colors.white70),
                        // ),
                         
  ))) ],
                ),
              ),
            ],
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.lock,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    new Container(
                        height: 48.00,
                        width: 236.86,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.00, 3.00),
                              blurRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30.00),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(30.0),
                                ),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Password confirmation",
                              fillColor: Colors.white70),
                        ))
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
              bottom: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
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
