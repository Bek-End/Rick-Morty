import 'dart:convert';

EpisodesModel episodesModelFromJson(String str) => EpisodesModel.fromJson(json.decode(str));

String episodesModelToJson(EpisodesModel data) => json.encode(data.toJson());

class EpisodesModel {
    EpisodesModel({
        this.totalRecords,
        this.succeeded,
        this.message,
        this.error,
        this.data,
    });

    final int totalRecords;
    final bool succeeded;
    final dynamic message;
    final dynamic error;
    final List<EpisodesData> data;

    factory EpisodesModel.fromJson(Map<String, dynamic> json) => EpisodesModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<EpisodesData>.from(json["data"].map((x) => EpisodesData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class EpisodesData {
    EpisodesData({
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
    final dynamic characters;

    factory EpisodesData.fromJson(Map<String, dynamic> json) => EpisodesData(
        id: json["id"],
        name: json["name"],
        season: json["season"],
        series: json["series"],
        plot: json["plot"],
        premiere: DateTime.parse(json["premiere"]),
        imageName: json["imageName"],
        characters: json["characters"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "season": season,
        "series": series,
        "plot": plot,
        "premiere": premiere.toIso8601String(),
        "imageName": imageName,
        "characters": characters,
    };
}

