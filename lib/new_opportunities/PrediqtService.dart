import 'package:dio/dio.dart';
import 'model.dart';

class PrediqtService {
  Dio _dio;
  static final PrediqtService _singleton = PrediqtService._internal();

  factory PrediqtService() => _singleton;

  Dio getClient() => _dio;

  PrediqtService._internal() {
    _dio = Dio(BaseOptions(baseUrl: 'https://prediqtapp.azurewebsites.net'));
  }

  List<Model> transformModelList(List<dynamic> map) {
    List<Model> models = List<Model>();
    map.forEach((element) {
      models.add(Model.fromJson(element));
    });
    return models;
  }
}
