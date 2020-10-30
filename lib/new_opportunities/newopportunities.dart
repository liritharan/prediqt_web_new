import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:prediqt_web_new/helper/size_helpers.dart';
import 'model.dart';
import 'package:prediqt_web_new/new_opportunities/PrediqtService.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class NewOpportunities extends StatelessWidget {
  const NewOpportunities({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dio dio = PrediqtService().getClient();
    return FutureBuilder(
        future: dio.get('/json/generatesJson.aspx', queryParameters: {
          'provider': 'adgate',
          'countrycode': 'IN',
        }),
        builder: (context, snapshot) {
          if (ConnectionState.done == snapshot.connectionState) {
            Response res = snapshot.data;
            List<Model> models =
                PrediqtService().transformModelList(res.data['data']);

            return Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: models.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.fromLTRB(4, 10, 6, 10),
                  child: Container(
                    width: 180.0,
                    color: Color(0xffe3e3dc),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(models[index].creatives.icon,
                                width: double.infinity,
                                //displayHeight(context) * 0.10,
                                height: 80,
                                fit: BoxFit.cover)),
                        Flexible(
                          child: Container(
                              child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(3, 5, 3, 3),
                                child: Text(
                                  models[index].anchor,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(3, 3, 3, 3),
                                    child: Text(
                                      models[index].requirements,
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black87),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ),
                        // Container(
                        //   child: Container(
                        //       height: displayHeight(context) * 0.08,
                        //       width: double.infinity,
                        //       child: Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: RaisedButton(
                        //           color: Colors.blue,
                        //           child: Text(
                        //             '${models[index].payout} Qts',
                        //             style: TextStyle(color: Colors.white),
                        //           ),
                        //           onPressed: () {
                        //             String url = models[index].clickUrl;
                        //             launchURL(url);
                        //           },
                        //         ),
                        //       )),
                        // ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 10),
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.bottomCenter,
                            child: RaisedButton(
                              color: Colors.blue,
                              child: Text(
                                '${models[index].payout} Qts',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                String url = models[index].preview_url;
                                launchURL(url);
                                print(url);
                                print(models[index].preview_url);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
