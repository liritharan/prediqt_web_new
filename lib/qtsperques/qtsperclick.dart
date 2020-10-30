import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';
import 'package:prediqt_web_new/Widgets/bottomwidget.dart';
import 'package:prediqt_web_new/Widgets/sidemenu.dart';
import 'package:prediqt_web_new/main.dart';
import 'Profiling.dart';
import 'ques_cubit.dart';
import 'ques_state.dart';
import 'question.dart';
import 'package:prediqt_web_new/const.dart';

class QtsperClick extends StatelessWidget {
  List<QuestionModel> ques;
  QtsperClick({Key key}) : super(key: key) {
    // Dio dio =
    //     Dio(BaseOptions(baseUrl: 'https://www.your-surveys.com/suppliers_api'));
    // Response res = await dio.post(
    //   '/surveys/profilers',
    //   queryParameters: {'limit': 15, 'country': 'IN', 'offset': 13},
    //   options: Options(
    //     headers: {
    //       'X-YourSurveys-Api-Key': 'bf069e91b99044f0846583491d6ce0ce',
    //     },
    //   ),
    // );
    // List<dynamic> profilers = res.data['profilers'];
    // profilers.forEach((profiler) {
    //   if (profiler['type'] == 'single_punch') {
    //     List ans = profiler['answers'];
    //     if (ans.length <= 20) {
    //       ques.add(Question.fromJson(profiler));
    //     }
    //   }
    // });
  }
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return ListView(
      children: [
        Stack(
          children: <Widget>[
            Container(
              color: Color(0XFF4d1be3),
              height: deviceSize.height * 0.12,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: deviceSize.width * 0.03,
              ),
              child: CubitBuilder<QuestionCubit, QuestionState>(
                builder: (BuildContext context, state) {
                  if (state is InitialState) {
                    context.cubit<QuestionCubit>().nextQuestion();
                    return Container(child: LinearProgressIndicator());
                  }
                  if (state is NextPageState)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  if (state is LoadedState) {
                    return Column(
                      children: <Widget>[
                        QuestionWidget(
                          question: state.question,
                        ),
                        Container(
                          height: 50.00,
                          width: double.infinity,
                          child: RaisedButton(
                            color: Color(0Xffdf9eff),
                            onPressed: () {
                              context.cubit<QuestionCubit>().nextQuestion();
                            },
                            child: const Text('25 QT',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    );
                  }
                  return Center();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
