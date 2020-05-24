import 'package:flutter/material.dart';

class SearchPharmacy extends StatefulWidget {
  @override
  _SearchPharmacyState createState() => _SearchPharmacyState();
}

class _SearchPharmacyState extends State<SearchPharmacy> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Container(
      width: (mediaquery.size.width - mediaquery.padding.horizontal) * 0.9,
      height: mediaquery.size.height * 0.07,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.grey,
          )),
      child: TextField(
        decoration: InputDecoration(
            hintStyle: Theme.of(context).textTheme.subtitle2,
            hintText: 'Search',
            prefixIcon:
                Icon(Icons.search, color: Theme.of(context).iconTheme.color),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal:
                  (mediaquery.size.width - mediaquery.padding.horizontal) *
                      0.01,
              vertical: (mediaquery.size.height - mediaquery.padding.vertical) *
                  0.027,
            )),
        autocorrect: true,
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 20),
        keyboardAppearance: Brightness.dark,
      ),
    );
  }
}