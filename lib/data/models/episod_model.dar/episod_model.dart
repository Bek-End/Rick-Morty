import 'dart:convert';

import 'package:RickAndMorty/data/models/location_model/location_model.dart';

EpisodModel episodModelFromJson(String str) => EpisodModel.fromJson(json.decode(str));

String episodModelToJson(EpisodModel data) => json.encode(data.toJson());

class EpisodModel {
    EpisodModel({
        this.succeeded,
        this.message,
        this.error,
        this.data,
    });

    final bool succeeded;
    final dynamic message;
    final dynamic error;
    final Data data;

    factory EpisodModel.fromJson(Map<String, dynamic> json) => EpisodModel(
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.name,
        this.season,
        this.series,
        this.plot,
        this.premiere,
        this.imageName,
        this.characters,
    });

    final String id;
    final String name;
    final int season;
    final int series;
    final String plot;
    final DateTime premiere;
    final String imageName;
    final List<Character> characters;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        season: json["season"],
        series: json["series"],
        plot: json["plot"],
        premiere: DateTime.parse(json["premiere"]),
        imageName: json["imageName"],
        characters: List<Character>.from(json["characters"].map((x) => Character.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "season": season,
        "series": series,
        "plot": plot,
        "premiere": premiere.toIso8601String(),
        "imageName": imageName,
        "characters": List<dynamic>.from(characters.map((x) => x.toJson())),
    };
}