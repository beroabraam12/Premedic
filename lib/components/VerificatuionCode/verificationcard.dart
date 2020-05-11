import 'package:flutter/material.dart';
//import 'package:pin_code_view/pin_code_view.dart';

class VerificationCard extends StatelessWidget {
  final constraint;
  VerificationCard(this.constraint);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);



    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
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
          //    Center(
          //    child: Container(
          //     child: PinInput(
          //       pinLength: 4,                                   /// The length of the pin.
          //                            /// Control the display of text and border.
          //          /// Control pin and observe pin.
          //       autoFocus: true,    
          //       onSubmit: (pin) {
          //           /// Add action to handle submit.
          //           debugPrint('submit pin:$pin');
          //       },
          //     ),
          // ),
          //  ),
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
                 style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {},
            ),
          )),
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
