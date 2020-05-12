import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterCard extends StatelessWidget {
  final constraint;
  RegisterCard(this.constraint);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.04,
            ),
          ),
          Center(
            child: Container(
              child: Image(image: AssetImage('assets/Logo.png')),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Container(
            width:mediaQuery.size.width*0.15,
            height:mediaQuery.size.height*0.15,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child:Image(image: AssetImage('assets/+.png')),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
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
                      padding: const EdgeInsets.only(left: 10.0,top:10.0),
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
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
                            hintText: " Full Name ",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                          ),
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
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
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
                       padding: const EdgeInsets.only(left: 10.0,top:10.0),
                      child: Icon(
                        Icons.email,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
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
                            hintText: "Email ",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                          ),
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
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
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
                       padding: const EdgeInsets.only(left: 10.0,top:10.0),
                      child: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
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
                            hintText: "Mobile ",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                          ),
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
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
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
                       padding: const EdgeInsets.only(left: 10.0,top:10.0),
                      child: Icon(
                        Icons.lock,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
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
                            hintText: "Password ",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          autofocus: false,
                          obscureText: true,
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
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
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
                      padding: const EdgeInsets.only(left: 10.0,top:10.0),
                      child: Icon(
                        Icons.lock,
                        color: Theme.of(context).iconTheme.color,
                        size: Theme.of(context).iconTheme.size,
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
                            hintText: "Password confirmation ",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          autofocus: false,
                          obscureText: true,
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
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Text(
            'Select Gender',
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),

// RadioButtonGroup(
//   orientation: GroupedButtonsOrientation.HORIZONTAL,
//   margin: const EdgeInsets.only(left: 12.0),
//   onSelected: (String selected) => setState((){
//     _picked = selected;
//   }),
//   labels: <String>[
//     "One",
//     "Two",
//   ],
//   picked: _picked,
//   itemBuilder: (Radio rb, Text txt, int i){
//     return Column(
//       children: <Widget>[
//         Icon(Icons.public),
//         rb,
//         txt,
//       ],
//     );
//   },
// ),

          Container(
            child: SizedBox(
              width: 200,
              height: 40.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Text("REGISTER",
                    //style: Theme.of(context).textTheme.title,
                    style: TextStyle(color: Colors.white)),
                color: Theme.of(context).accentColor,
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Do you have account? ",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.right,
                ),
                Text(
                  "Login now!",
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Text('OR',
              textAlign: TextAlign.right, style: TextStyle(color: Colors.grey)),
          SignInButton(
            Buttons.Facebook,
            text: "Sign up with Facebook",
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          SignInButton(
            Buttons.Google,
            text: "Sign up with Google",
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
