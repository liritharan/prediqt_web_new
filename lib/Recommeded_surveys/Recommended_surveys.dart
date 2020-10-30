import 'package:flutter/material.dart';
import 'package:prediqt_web_new/Recommeded_surveys/Recommended_widget.dart';
import 'package:prediqt_web_new/qtsperques/qtsperclick.dart';

class RecommededSurveys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
      child: Card(
        color: Color(0XFFbacfbf),
        child: Container(
          height: 200,
          child: RecomWidget(),
        ),
      ),
    );
  }
}
