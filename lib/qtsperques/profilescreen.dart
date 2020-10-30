import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:prediqt_web_new/Widgets/bottomwidget.dart';
import 'package:prediqt_web_new/Widgets/sidemenu.dart';
import 'package:prediqt_web_new/qtsperques/qtsperclick.dart';
import 'package:prediqt_web_new/qtsperques/ques_cubit.dart';

import '../const.dart';

class ProfileScreen extends StatelessWidget {
  @override
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
              Container(
                height: MediaQuery.of(context).size.height,
                child: CubitProvider(
                  create: (BuildContext context) => QuestionCubit(),
                  child: QtsperClick(),
                ),
              ),
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
