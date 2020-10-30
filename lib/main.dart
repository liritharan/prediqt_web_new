import 'dart:html';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prediqt_web_new/Recommeded_surveys/Recommended_surveys.dart';
import 'package:prediqt_web_new/Recommeded_surveys/Recommended_widget.dart';
import 'package:prediqt_web_new/Widgets/bottomwidget.dart';
import 'package:prediqt_web_new/Widgets/sidemenu.dart';
import 'package:prediqt_web_new/new_opportunities/newopportunities.dart';
import 'package:prediqt_web_new/qtsperques/qtsperclick.dart';
import 'package:prediqt_web_new/qtsperques/ques_cubit.dart';
import 'const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  final List elements = [
    "Check-in",
    "Offer Wall",
    "New Survey",
    "Recommended Survey",
    "What? 2 QTs per click?",
    "Shop at your favorite stores",
    "Watch Videos",
    "Idle Reward",
    "Shop Online",
    "Referral Program",
    "Review"
  ];

  final List rewards = [
    "Check-in:Get 5 QTs for checkin our offers DAILY",
    "Offer Wall:Get Unlimited QTs. By Playing, watching Videos, Download Apps and more..",
    "Idle Reward:Get Rewards every 60 seconds",
    "Referral Program:Share your unique code with your friends and earn QTs.",
  ];

  final List rewardsImg = [
    "images/icon_checkin.png",
    "images/icon_money.png",
    "images/icon_idle.png",
    "images/icon_referral.png",
  ];

  final List surveys = [
    "New Survey:Congratulations!! You have a new Survey",
    "Recommended Survey:Great Bonus Surveys",
    "What? 2 QTs per click?:For each question you receive 2 QTs",
  ];

  final List surveysImg = [
    "images/icon_cint.png",
    "images/icon_marketcube.png",
    "images/icon_star.png",
  ];

  final List shops = [
    "Shop at your favorite stores:Start Earning Cash Back Every Time You Shop with Prediqt",
    "Shop Online:Get 5 QTs for checkin our offers DAILY",
  ];

  final List shopsImg = [
    "images/icon_store.png",
    "images/icon_amazon.png",
  ];

  String getRewards(int sender, int sender1) {
    String se = rewards[sender];
    List gR = se.split(":");
    return gR[sender1];
  }

  String getSurveys(int sender, int sender1) {
    String se = surveys[sender];
    List gR = se.split(":");
    return gR[sender1];
  }

  String getShops(int sender, int sender1) {
    String se = shops[sender];
    List gR = se.split(":");
    return gR[sender1];
  }

  _launchURL(int sender) async {
    var url = 'https://wall.adgaterewards.com/nq-YrA/204847';
    if (sender == 1) {
      url = 'https://www.offertoro.com/ifr/show/23769/204847/9800';
    }
    if (sender == 2) {
      url = 'https://api.adgem.com/v1/wall?appid=2043&playerid=204847';
    }
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
//          Icon(Icons.list, color: Colors.blue,),
              Image.asset(
                'images/logo.png',
                width: 50,
                height: 50,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Prediqt',
                style: TextStyle(color: Colors.black54),
              ),
              Positioned(
                top: 50,
                right: 50,
                child: PopupMenuButton<Choice>(
                  itemBuilder: (BuildContext context) {
                    return choices.map((Choice choice) {
                      return PopupMenuItem<Choice>(
                        value: choice,
                        child: Text(choice.title),
                      );
                    }).toList();
                  },
                ),
              )
//          Row(
//            mainAxisAlignment: MainAxisAlignment.end,
//            crossAxisAlignment: CrossAxisAlignment.end,
//            children: [
//              PopupMenuButton<Choice>(
//                itemBuilder: (BuildContext context) {
//                  return choices.map((Choice choice) {
//                    return PopupMenuItem<Choice>(
//                      value: choice,
//                      child: Text(choice.title),
//                    );
//                  }).toList();
//                },
//              ),
//            ],
//          )
            ],
          ),
          backgroundColor: Colors.white),
//      drawer: MediaQuery.of(context).size.width < 1000 ? Drawer(
//        child: Menu(),
//      ) : null,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(),

          //TODO ADD

          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            child: Column(children: [
              SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 15),
                child: Container(
                    height: 250,
                    color: Color(0XFFbac1e3),
                    child: RecomWidget()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                child: Container(
                    height: 250,
                    color: Color(0XFFbac1e3),
                    child: NewOpportunities()),
              ),
              // Container(
              //   height: 300,
              //   child: CubitProvider(
              //     create: (BuildContext context) => QuestionCubit(),
              //     child: QtsperClick(),
              //   ),
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: BottomWidget(),
              )
            ]),
          )
        ],
      ))),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(context) => ListView(children: [
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_one),
              title: Text("First Link"),
              tileColor: Colors.black,
            )),
        FlatButton(
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Second Link"),
              tileColor: Colors.black,
            )),
        FlatButton(
            onPressed: () {
//              Navigator.pushReplacementNamed(
//                context, "/login");
            },
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ))
      ]);
}
