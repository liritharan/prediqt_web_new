import 'package:dio/dio.dart';
import 'Recommended_model.dart';

class RecommendedService {
  Dio _dio;
  static final RecommendedService _singleton = RecommendedService._internal();

  factory RecommendedService() => _singleton;

  Dio getClient() => _dio;

  RecommendedService._internal() {
    _dio = Dio(BaseOptions(baseUrl: 'https://www.your-surveys.com'));
  }

  List<Surveys> transformModelList(List<dynamic> map) {
    List<Surveys> models = List<Surveys>();
    map.forEach((element) {
      models.add(Surveys.fromJson(element));
    });
    return models;
  }
}
