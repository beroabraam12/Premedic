import 'package:flutter/material.dart';

import '../components/Pharmacies/dropdown_list.dart';
import '../components/Pharmacies/search.dart';
import '../models/pharmacy_model_cards.dart';
import '../pages/home.dart';

class PharmaciesPage extends StatefulWidget {
  static final routeName = "/pharmacies";
  @override
  _PharmaciesPageState createState() => _PharmaciesPageState();
}

class _PharmaciesPageState extends State<PharmaciesPage> {
  @override
  Widget build(BuildContext context) {
    List<PharmacyModelCards> pharmacyModelCardList = List();
    pharmacyModelCardList.add(PharmacyModelCards(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y",
      "PHARMACY NAME",
      'https://madosan.com.tr/assets/uploads/galeri/super-market-hiper-market/img-6510-jpg_1505830068.jpg',
    ));
    pharmacyModelCardList.add(PharmacyModelCards(
      "https://madosan.com.tr/assets/uploads/galeri/super-market-hiper-market/img-6510-jpg_1505830068.jpg",
      "PHARMACY NAME",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQyxwmSZ_bvZ6XLAehGVLTQ93P0h5TvQ3Unvsj1awSZPIQ-6B1y',
    ));

    var mediaquery = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Container(
              width: mediaquery.size.width,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.07,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: (mediaquery.size.width -
                                  mediaquery.padding.left) *
                              0.03,
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: Theme.of(context).iconTheme.size,
                          ),
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          })
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (mediaquery.size.height - mediaquery.padding.top) *
                          0.03,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Pharmacies',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                        top: (mediaquery.size.height - mediaquery.padding.top) *
                            0.03,
                      )),
                      DropdownPharmacy(),
                      Padding(
                          padding: EdgeInsets.only(
                        top: (mediaquery.size.height - mediaquery.padding.top) *
                            0.03,
                      )),
                      SearchPharmacy(),
                      
                      Container(
                        width: (mediaquery.size.width),
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: pharmacyModelCardList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: (mediaquery.size.width),
                                height: mediaquery.size.height * 0.20,
                                padding: EdgeInsets.symmetric(
                                  vertical: (mediaquery.size.height -
                                          mediaquery.padding.vertical) *
                                      0.01,
                                  horizontal: (mediaquery.size.width -
                                          mediaquery.padding.horizontal) *
                                      0.04,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.dstATop),
                                      image: AssetImage(
                                          "assets/background-01.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        pharmacyModelCardList[index]
                                            .pharmacyName,
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: (mediaquery.size.height -
                                                      mediaquery.padding.top) *
                                                  0.02)),
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            pharmacyModelCardList[index]
                                                .pharmacyCircleImage),
                                        radius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
