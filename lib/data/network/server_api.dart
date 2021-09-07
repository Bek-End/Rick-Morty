import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/data/models/episod_model.dar/episod_model.dart';
import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/data/network/dio_settings.dart';
import 'package:dio/dio.dart';

class ServerApi {
  //В этом класса будут добавлены запросы.

  //Добавляем экземпляры Dio и DioSettings
  DioSettings _dioSettings;
  Dio _dio;

  /// И мап для запроса
  Map<String, dynamic> _request = {"PageNumber": 1, "PageSize": 100};

  //Добавляем синглтон
  static ServerApi _instance = new ServerApi.internal();
  factory ServerApi() => _instance;
  ServerApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  //Добавляем запросы
  //Название запроса ...
  Future<CharactersModel> getCharacters() async {
    Response<String> response = await _dio.get(
      "/api/Characters/GetAll",
      queryParameters: _request,
    );
    return charactersModelFromJson(response.toString());
  }

  Future<CharacterModel> getCharacter(String id) async {
    Response<String> response = await _dio.get(
      "/api/Characters/GetById",
      queryParameters: {"Id": id},
    );
    return characterModelFromJson(response.toString());
  }

  Future<EpisodesModel> getEpisodes(int season) async {
    Response<String> response = await _dio.get(
      "/api/Episodes/GetAll",
      queryParameters: {"PageNumber": 1, "PageSize": 100, "Season": season},
    );
    return episodesModelFromJson(response.toString());
  }

  Future<EpisodModel> getEpisod(String id) async {
    Response<String> response = await _dio.get(
      "/api/Episodes/GetById",
      queryParameters: {"Id": id},
    );
    return episodModelFromJson(response.toString());
  }

  Future<LocationsModel> getLocations() async {
    Response<String> response = await _dio.get(
      "/api/Locations/GetAll",
      queryParameters: _request,
    );
    return locationsModelFromJson(response.toString());
  }

  Future<LocationModel> getLocation(String id) async {
    Response<String> response = await _dio.get(
      "/api/Locations/GetById",
      queryParameters: {"Id": id},
    );
    return locationModelFromJson(response.toString());
  }
}
