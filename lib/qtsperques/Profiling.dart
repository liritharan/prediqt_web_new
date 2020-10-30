import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'question.dart';

class QuestionWidget extends StatefulWidget {
  QuestionModel question;
  QuestionWidget({this.question});
  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  String _verticalGroupValue;

  @override
  void initState() {
    super.initState();
    print(': ' + this.widget.question.toString());

    _verticalGroupValue = null;
  }

  //
  // _QuestionWidgetState() {
  //
  // }

  @override
  Widget build(BuildContext context) {
    List<String> _answers = List();
    this.widget.question.answers.forEach((element) {
      _answers.add(element.answer);
    });
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        //horizontal: deviceSize.width * 0.03,
        vertical: deviceSize.height * 0.05,
      ),
      child: Column(
        children: [
          Card(
            elevation: 3.0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: deviceSize.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          this.widget.question.question,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 3.0,
            child: Container(
              alignment: Alignment.centerLeft,
              // height: deviceSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SafeArea(
                          child: RadioGroup<String>.builder(
                            groupValue: _verticalGroupValue,
                            onChanged: (value) => setState(() {
                              _verticalGroupValue = value;
                            }),
                            items: _answers,
                            itemBuilder: (item) => RadioButtonBuilder(
                              item,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
