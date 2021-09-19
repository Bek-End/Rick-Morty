import 'dart:convert';

import 'package:RickAndMorty/data/models/location_model/location_model.dart';

CharactersModel charactersModelFromJson(String str) => CharactersModel.fromJson(json.decode(str));

String charactersModelToJson(CharactersModel data) => json.encode(data.toJson());

class CharactersModel {
    CharactersModel({
        this.totalRecords,
        this.succeeded,
        this.message,
        this.error,
        this.data,
    });

    int totalRecords;
    final bool succeeded;
    final dynamic message;
    final dynamic error;
    final List<Character> data;

    factory CharactersModel.fromJson(Map<String, dynamic> json) => CharactersModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<Character>.from(json["data"].map((x) => Character.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Location {
    Location({
        this.id,
        this.name,
    });

    final String id;
    final String name;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

enum PlaceOfBirth { C_137, EMPTY, PLACE_OF_BIRTH, PURPLE, FLUFFY }

final placeOfBirthValues = EnumValues({
    "Измерение C-137": PlaceOfBirth.C_137,
    "Земля": PlaceOfBirth.EMPTY,
    "Птичий мир": PlaceOfBirth.FLUFFY,
    "Постапокалиптическое измерение": PlaceOfBirth.PLACE_OF_BIRTH,
    "Громфлом": PlaceOfBirth.PURPLE
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
