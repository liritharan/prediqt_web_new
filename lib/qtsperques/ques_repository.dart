import 'package:dio/dio.dart';
import 'question.dart';

class QuestionRepository {
  Future<List<QuestionModel>> getQuestion() async {
    try {
      List<QuestionModel> ques = List<QuestionModel>();
      Dio dio = Dio(
          BaseOptions(baseUrl: 'https://www.your-surveys.com/suppliers_api'));
      Response res = await dio.post(
        '/surveys/profilers',
        queryParameters: {'limit': 15, 'country': 'IN', 'offset': 13},
        options: Options(
          headers: {
            'X-YourSurveys-Api-Key': 'bf069e91b99044f0846583491d6ce0ce',
          },
        ),
      );
      List<dynamic> profilers = res.data['profilers'];
      profilers.forEach((profiler) {
        if (profiler['type'] == 'single_punch') {
          List ans = profiler['answers'];
          if (ans.length <= 20) {
            ques.add(QuestionModel.fromJson(profiler));
          }
        }
      });
      return ques;
    } catch (e) {
      throw e;
    }
  }
}
