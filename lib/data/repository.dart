import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/data/network/server_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data_base/constants.dart';
import 'data_base/theme_types.dart';
import 'models/episod_model.dar/episod_model.dart';

class Repository {
  final _serverApi = ServerApi();

  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences _prefs;

  ThemeType getThemeType() {
    final type = _prefs.getString(Constants.ThemeType);
    return type as ThemeType;
  }

  Future<CharactersModel> getCharacters() async {
    final response = await _serverApi.getCharacters();
    return response;
  }

  Future<EpisodesModel> getEpisodes(int season) async {
    final response = await _serverApi.getEpisodes(season);
    return response;
  }

  Future<LocationsModel> getLocations() async {
    final response = await _serverApi.getLocations();
    return response;
  }

  Future<CharacterModel> getCharacterById(String id) async {
    final response = await _serverApi.getCharacterById(id);
    return response;
  }

  Future<EpisodModel> getEpisodById(String id) async {
    final response = await _serverApi.getEpisodById(id);
    return response;
  }

  Future<LocationModel> getLocationById(String id) async {
    final response = await _serverApi.getLocationById(id);
    return response;
  }

  Future<CharactersModel> getCharactersFilter(
      {String name, List<int> statusList, List<int> genderList}) async {
    final response = await _serverApi.getCharactersFilter(
        name: name, statusList: statusList, genderList: genderList);
    return response;
  }

  Future<EpisodesModel> getEpisodesFilter({String name}) async {
    final response = await _serverApi.getEpisodesFilter(name:name);
    return response;
  }

  Future<LocationsModel> getLocationsFilter(
      {String name, String type, String measurements}) async {
    final response = await _serverApi.getLocationsFilter(
        name: name, type: type, measurements: measurements);
    return response;
  }
}
