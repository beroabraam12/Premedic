import 'package:flutter/material.dart';
import 'package:premedic/components/VerificatuionCode/verificationcard.dart';


class CodeVerificationPage extends StatefulWidget {
  @override
  _CodeVerificationPageState createState() => _CodeVerificationPageState();
}

class _CodeVerificationPageState extends State<CodeVerificationPage> {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: AssetImage("assets/background-01.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
            Container(
              width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(
               
                vertical:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.09,
              ),
              child: Center(
                child: 
                Text(
                  "Verification Code",
                  style: Theme.of(context).textTheme.title,
                ),
              ),
            ),
          Container(
             
              child: Center(
                child: Text(
                  "We will send Verification Code ",
                  style: Theme.of(context).textTheme.subhead,
                ),
              ),),
              Container(
             
              child: Center(
                child: Text(
                  "with in 2 minutes to verify you number",
                  style: Theme.of(context).textTheme.subhead,
                ),
              ),
            ),
             Container(
             width: mediaQuery.size.width,
              margin: EdgeInsets.symmetric(
               
                vertical:
                    (mediaQuery.size.height - mediaQuery.padding.top) * 0.10,
              ),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                 
                  blurRadius: 20.0,
                ),
              ]),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraint) {
                  return VerificationCard(constraint);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
