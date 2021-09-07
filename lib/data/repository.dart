import 'package:RickAndMorty/data/models/character_model/character_model.dart';
import 'package:RickAndMorty/data/models/characters_model/characters_model.dart';
import 'package:RickAndMorty/data/models/episodes_model/episodes_model.dart';
import 'package:RickAndMorty/data/models/location_model/location_model.dart';
import 'package:RickAndMorty/data/models/locations_model/locations_model.dart';
import 'package:RickAndMorty/data/network/server_api.dart';

import 'models/episod_model.dar/episod_model.dart';

class Repository {
  final _serverApi = ServerApi();

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

  Future<CharacterModel> getCharacter(String id) async {
    final response = await _serverApi.getCharacter(id);
    return response;
  }

  Future<EpisodModel> getEpisod(String id) async {
    final response = await _serverApi.getEpisod(id);
    return response;
  }

  Future<LocationModel> getLocation(String id) async {
    final response = await _serverApi.getLocation(id);
    return response;
  }
}
