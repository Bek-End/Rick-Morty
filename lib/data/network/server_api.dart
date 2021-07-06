import 'package:RickAndMorty/data/network/dio_settings.dart';
import 'package:dio/dio.dart';

class ServerApi {
  //В этом класса будут добавлены запросы.

  //Добавляем экземпляры Dio и DioSettings 
  DioSettings _dioSettings; 
  Dio _dio; 
  /// И мап для запроса 
  Map<String, dynamic> _request;

  //Добавляем синглтон
  static ServerApi _instance = new ServerApi.internal(); 
  factory ServerApi() => _instance; 
  ServerApi.internal() { 
    _dioSettings = DioSettings(); 
    _dio = _dioSettings.dio; 
    }

    //Добавляем запросы
    //Название запроса ...
}
