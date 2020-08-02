import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:premedic/pages/home.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:premedic/pages/login.dart';

enum Gender { Male, Female }

class RegisterCard extends StatefulWidget {
  @override
  _RegisterCardState createState() => _RegisterCardState();
}

class _RegisterCardState extends State<RegisterCard> {
  String radioButtonItem = 'Gender';
  int id = 1;
  File imageFile;
  bool _isLoading;
  DateTime _selectedDate;

  final TextEditingController _passwordTextController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  Gender _gender = Gender.Male;

  String fullName, email, mobile, password, birthDate;

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _selectedDate == null ? DateTime.now() : _selectedDate,
      firstDate: DateTime(1970, 1),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        // Provider.of<User>(context, listen: false).updatedUser.birthdate =
        //     pickedDate;
      });
    });
  }

  void getImages(BuildContext context, ImageSource source) async {
    final pickedFile = await picker.getImage(source: source, imageQuality: 50);
    setState(() {
      imageFile = File(pickedFile.path);
    });
    Navigator.of(context).pop();
  }

  void _openImagePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.25,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(children: <Widget>[
                  Text(
                    "Pick Image",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text("Use Camera"),
                  onPressed: () => getImages(context, ImageSource.camera),
                ),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text("Use Gallery"),
                  onPressed: () => getImages(context, ImageSource.gallery),
                ),
              ],
            ),
          );
        });
  }

  Widget _getImageView(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(70),
      child: Container(
        width: MediaQuery.of(context).size.height * 0.15,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: imageFile != null
            ? Image.file(imageFile, fit: BoxFit.cover)
            : GestureDetector(
                child: Icon(Icons.add, size: 50, color: Colors.white),
                onTap: () {
                  _openImagePicker(context);
                },
              ),
      ),
    );
  }

  Widget _buildGenderContainer(mediaQuery) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: mediaQuery.size.width * 0.05),
      child: Row(
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: RadioListTile<Gender>(
              title: Text(
                "Male",
                style: TextStyle(fontSize: 14),
              ),
              value: Gender.Male,
              groupValue: _gender,
              onChanged: (Gender value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: RadioListTile<Gender>(
              title: Text(
                "Female",
                style: TextStyle(fontSize: 14),
              ),
              value: Gender.Female,
              groupValue: _gender,
              onChanged: (Gender value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Future submitRegister() async {
    // final authUser = Provider.of<User>(context, listen: false);
    if (!_formKey.currentState.validate()) {
      return;
    }
    setState(() {
      _isLoading = true;
    });
    _formKey.currentState.save();
    // user = UserModel(
    //     name: fullname,
    //     email: email,
    //     phoneNumber: phone,
    //     password: password,
    //     gender: _gender == Gender.Male ? "Male" : "Female",
    //     block: false);

    var success = true; // await authUser.signup(user, context);
    if (success) {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushNamedAndRemoveUntil(
          HomePage.routeName, (Route<dynamic> route) => false);
    } else {
      setState(() {
        _isLoading = false;
      });
      // WarningPopup.showWarningDialog(context, false,
      //     Provider.of<User>(context, listen: false).errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.07,
            ),
          ),
          Center(
            child: Image(image: AssetImage('assets/Logo.png')),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
                bottom:
                    (mediaQuery.size.height - mediaQuery.padding.bottom) * 0.03,
              ),
              child: _getImageView(context),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left:
                            (mediaQuery.size.width - mediaQuery.padding.left) *
                                0.025,
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.011,
                      ),
                      child: Icon(
                        Icons.perm_identity,
                        color: Theme.of(context).accentColor,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.04,
                    )),
                    Container(
                      width: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.7,
                      height: mediaQuery.size.height * 0.07,
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
                      child: TextFormField(
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                            hintStyle: Theme.of(context).textTheme.headline3,
                            hintText: 'Full Name',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: (mediaQuery.size.width -
                                      mediaQuery.padding.horizontal) *
                                  0.05,
                            )),
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 18),
                        validator: (value) {
                          if (value.length < 2) {
                            return "Please Enter Your Name Correctly";
                          }
                          return null;
                        },
                        onSaved: (value) => fullName = value,
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.025)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left:
                            (mediaQuery.size.width - mediaQuery.padding.left) *
                                0.025,
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.011,
                      ),
                      child: Icon(
                        Icons.email,
                        color: Theme.of(context).accentColor,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.04,
                    )),
                    Container(
                      width: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.7,
                      height: mediaQuery.size.height * 0.07,
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
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty ||
                              !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                  .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                            hintStyle: Theme.of(context).textTheme.headline3,
                            hintText: 'Email',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: (mediaQuery.size.width -
                                      mediaQuery.padding.horizontal) *
                                  0.05,
                            )),
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.025)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left:
                            (mediaQuery.size.width - mediaQuery.padding.left) *
                                0.025,
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.011,
                      ),
                      child: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).accentColor,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.04,
                    )),
                    Container(
                      width: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.7,
                      height: mediaQuery.size.height * 0.07,
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
                      child: TextFormField(
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                            hintStyle: Theme.of(context).textTheme.headline3,
                            hintText: 'Mobile',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: (mediaQuery.size.width -
                                      mediaQuery.padding.horizontal) *
                                  0.05,
                            )),
                        onSaved: (value) => mobile = value,
                        validator: (value) {
                          if (value.isEmpty ||
                              RegExp("^(?:[+0]9)?[0-9]{10}\$")
                                  .hasMatch(value)) {
                            return "please enter a valid number";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.025)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left:
                            (mediaQuery.size.width - mediaQuery.padding.left) *
                                0.025,
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.011,
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Theme.of(context).accentColor,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.04,
                    )),
                    Container(
                      width: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.7,
                      height: mediaQuery.size.height * 0.07,
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
                      child: TextFormField(
                        controller: _passwordTextController,
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                            hintStyle: Theme.of(context).textTheme.headline3,
                            hintText: 'Password',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: (mediaQuery.size.width -
                                      mediaQuery.padding.horizontal) *
                                  0.05,
                              vertical: (mediaQuery.size.height -
                                      mediaQuery.padding.vertical) *
                                  0.027,
                            )),
                        validator: (value) {
                          if (value.length < 6) {
                            return "Password must be 6 letters or numbers";
                          }
                          return null;
                        },
                        onSaved: (String value) => password = value,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.025)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left:
                            (mediaQuery.size.width - mediaQuery.padding.left) *
                                0.025,
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.011,
                      ),
                      child: Icon(
                        Icons.lock_outline,
                        color: Theme.of(context).accentColor,
                        size: Theme.of(context).iconTheme.size,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      left: (mediaQuery.size.width - mediaQuery.padding.left) *
                          0.04,
                    )),
                    Container(
                      width: (mediaQuery.size.width -
                              mediaQuery.padding.horizontal) *
                          0.7,
                      height: mediaQuery.size.height * 0.07,
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
                      child: TextFormField(
                        decoration: InputDecoration(
                            errorStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                            hintStyle: Theme.of(context).textTheme.headline3,
                            hintText: 'Password Confirmation',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: (mediaQuery.size.width -
                                      mediaQuery.padding.horizontal) *
                                  0.05,
                            )),
                        validator: (value) {
                          if (_passwordTextController.text != value) {
                            return "Paswword Not Match";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: (mediaQuery.size.height - mediaQuery.padding.top) *
                            0.025)),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left:
                      (mediaQuery.size.width - mediaQuery.padding.left) * 0.025,
                  top:
                      (mediaQuery.size.height - mediaQuery.padding.top) * 0.011,
                ),
                child: Icon(
                  Icons.calendar_today,
                  color: Theme.of(context).accentColor,
                  size: Theme.of(context).iconTheme.size,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
              )),
              Container(
                width: (mediaQuery.size.width - mediaQuery.padding.horizontal) *
                    0.7,
                height: mediaQuery.size.height * 0.07,
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
                child: FlatButton(
                  onPressed: () => _presentDatePicker(),
                  child: Row(
                    children: <Widget>[
                      Text(
                        _selectedDate == null
                            ? 'Choose BirthDate'
                            : "Picked Date ${DateFormat.yMMMd().format(_selectedDate)}",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.05,
              left: (mediaQuery.size.width - mediaQuery.padding.left) * 0.04,
            ),
            child: Text(
              'Select Gender',
              style: TextStyle(
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.01,
            ),
          ),
          _buildGenderContainer(mediaQuery),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.02,
            ),
          ),
          Center(
            child: Container(
              width: mediaQuery.size.width * 0.5,
              height: mediaQuery.size.height * 0.06,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("REGISTER", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  submitRegister();
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Do you have account?",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right:
                      (mediaQuery.size.width - mediaQuery.padding.right) * 0.01,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  "Login now!",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height - mediaQuery.padding.top) * 0.03,
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text('OR',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey)),
                Padding(
                  padding: EdgeInsets.only(
                    top: (mediaQuery.size.height - mediaQuery.padding.top) *
                        0.02,
                  ),
                ),
              ],
            ),
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
