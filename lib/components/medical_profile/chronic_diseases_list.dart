import 'package:flutter/material.dart';

import 'package:premedic/models/chronic_diseases_model.dart';

class ChronicDiseasesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    List<ChronicDiseasesModel> chronicDiseasesList = List();
    chronicDiseasesList.add(ChronicDiseasesModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ53fkKIu5OaLkgd4s4RMMPOmpOqdyXud7T0BWCfvUIddTlSdSD&usqp=CAU',
        'Blood Pressure'));
    chronicDiseasesList.add(ChronicDiseasesModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkUJmQBpXVM1oJWREQfRW1sB1feKwZw2mhNswWKQGWUl_9-9Fv&usqp=CAU',
        'Diabetes'));

    return Container(
      width: mediaQuery.size.width,
      height: mediaQuery.size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chronicDiseasesList.length,
        itemBuilder: (BuildContext context , int index){
          return Padding(
            padding: EdgeInsets.only(
              top: (mediaQuery.size.height-mediaQuery.padding.top)*0.02,
              left: (mediaQuery.size.width-mediaQuery.padding.left)*0.03,
              right: (mediaQuery.size.width-mediaQuery.padding.right)*0.03,
              bottom: (mediaQuery.size.height-mediaQuery.padding.bottom)*0.01,
            ),
            child: Container(
              width: mediaQuery.size.width * 0.5,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.00, 3.00),
                    color: Color(0xff000000).withOpacity(0.16),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(70),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                        chronicDiseasesList[index].diseasesImg
                      ),
                    ), 
                    Padding(padding: EdgeInsets.only(
                      top: (mediaQuery.size.height-mediaQuery.padding.top)*0.01
                    )),
                    Text(chronicDiseasesList[index].diseasesName),
                  ],
                ),
            ),
          );
        },
      ),
    );
  }
}
