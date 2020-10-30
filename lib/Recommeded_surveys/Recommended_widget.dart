import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'Recommended_model.dart';
import 'Recommended_services.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class RecomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Dio dio = RecommendedService().getClient();
    return FutureBuilder(
        future: dio.get('/suppliers_api/surveys/user',
            queryParameters: {
              "email": "S@g.com",
              "user_id": "161226",
              "gender": "M",
              "date_of_birth": "2001-01-01",
              "ip_address": "60.243.24.252",
              "limit": 10,
            },
            options: Options(
              headers: {
                'X-YourSurveys-Api-Key': 'bf069e91b99044f0846583491d6ce0ce',
              },
            )),
        builder: (context, snapshot) {
          if (ConnectionState.done == snapshot.connectionState) {
            Response res = snapshot.data;
            List<Surveys> models = RecommendedService()
                .transformModelList(snapshot.data.data['surveys']);
            print(res.data);
            return GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: models.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext ctxt, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(3, 0, 0, 8),
                    child: GestureDetector(
                      child: Container(
                        height: 180,
                        width: 280,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 10, 15, 0),
                                      child: Container(
                                        height: 38,
                                        width: double.infinity,
                                        color: Colors.orange,
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              models[index].name,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 15, 0),
                                      child: Container(
                                        height: 110,
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 10, 5, 5),
                                              child: Text(
                                                '${models[index].project_id}',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 0, 5, 5),
                                              child: Text(
                                                '*Average Time:15m. *Total Remain:96. Note:Payment for completing this survey is subject to meeting the requirement',
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 5),
                                              child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    // models[index]
                                                    //     .loi
                                                    //     .toString()
                                                    '${models[index].loi} QT',
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        String url = models[index].entry_link;
                        launchURL(url);
                        print(url);
                        print(models[index].entry_link);
                      },
                    ),
                  );
                });
          } else if (ConnectionState.none == snapshot.connectionState) {
            return Container(
              child: Text('Loading'),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
    //TODO Remove
    // return FutureBuilder(
    //     future: dio.get('/suppliers_api/surveys/user',
    //         queryParameters: {
    //           'user_id': '1',
    //           'date_of_birth': '1990-01-01',
    //           'email': 'sampleuser@example.com',
    //           'gender': 'f',
    //           'zip_code': '99501',
    //           'ip_address': '100.200.200.200'
    //         },
    //         options: Options(
    //           headers: {
    //             'X-YourSurveys-Api-Key': 'bf069e91b99044f0846583491d6ce0ce',
    //           },
    //         )),
    //     builder: (context, snapshot) {
    //       if (ConnectionState.done == snapshot.connectionState) {
    //         Response res = snapshot.data;
    //         List<Surveys> models = RecommendedService()
    //             .transformModelList(snapshot.data.data['surveys']);
    //         print(res.data.runtimeType);
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext ctxt, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(3, 8, 0, 8),
            child: Container(
              height: 180,
              width: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                            child: Container(
                              height: 38,
                              width: double.infinity,
                              color: Colors.orange,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'models[index].name',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              height: 110,
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 10, 5, 5),
                                    child: Text(
                                      "Title Description",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 5),
                                    child: Text(
                                      '*Average Time:15m. *Total Remain:96. Note:Payment for completing this survey is subject to meeting the requirement',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                    child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '908',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
