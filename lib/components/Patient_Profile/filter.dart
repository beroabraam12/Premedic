import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool pressAttention = false;
  Color _buttonColor1 = Color(0xFFDE6161);
  Color _buttonColor2 = Colors.grey[400];
  

  Color _textColor1 = Colors.white;
  Color _textColor2 = Colors.black;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Text('IN PROGRESS'),
            color: _buttonColor1,
            textColor: _textColor1,
            onPressed: () {
              setState(() {
                _buttonColor1 = Color(0xFFDE6161);
                _buttonColor2 = Colors.grey[400];
                _textColor1 = Colors.white;
                _textColor2 = Colors.black;
              });
            }),
            Padding(padding: EdgeInsets.symmetric(
              horizontal: (MediaQuery.of(context).size.width - MediaQuery.of(context).padding.horizontal) *0.03
            )),
        RaisedButton(
          onPressed: () {
            setState(() {
              _buttonColor2 = Color(0xFFDE6161);
              _buttonColor1 = Colors.grey[400];
              _textColor2 = Colors.white;
              _textColor1 = Colors.black;
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Text('FINISHED'),
          color: _buttonColor2,
          textColor: _textColor2,
        ),
      ],
    );
  }
}