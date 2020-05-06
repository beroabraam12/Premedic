import 'package:flutter/material.dart';

class FilterRow extends StatefulWidget {
  @override
  _FilterRowState createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  bool pressAttention = false;
  Color _buttonColor1 = Color(0xFFDE6161);
  Color _buttonColor2 = Colors.grey[400];
  Color _buttonColor3 = Colors.grey[400];

  Color _textColor1 = Colors.white;
  Color _textColor2 = Colors.black;
  Color _textColor3 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Text('PHYSIOTHERAPY'),
            color: _buttonColor1,
            textColor: _textColor1,
            onPressed: () {
              setState(() {
                _buttonColor1 = Color(0xFFDE6161);
                _buttonColor2 = Colors.grey[400];
                _buttonColor3 = Colors.grey[400];
                _textColor1 = Colors.white;
                _textColor2 = Colors.black;
                _textColor3 = Colors.black;
              });
            }),
        RaisedButton(
          onPressed: () {
            setState(() {
              _buttonColor2 = Color(0xFFDE6161);
              _buttonColor1 = Colors.grey[400];
              _buttonColor3 = Colors.grey[400];
              _textColor2 = Colors.white;
              _textColor1 = Colors.black;
              _textColor3 = Colors.black;
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Text('LUNGS'),
          color: _buttonColor2,
          textColor: _textColor2,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _buttonColor3 = Color(0xFFDE6161);
              _buttonColor1 = Colors.grey[400];
              _buttonColor2 = Colors.grey[400];
              _textColor3 = Colors.white;
              _textColor2 = Colors.black;
              _textColor1 = Colors.black;
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Text('BONES'),
          color: _buttonColor3,
          textColor: _textColor3,
        ),
      ],
    );
  }
}