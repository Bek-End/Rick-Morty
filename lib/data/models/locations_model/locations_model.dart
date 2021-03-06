import 'dart:convert';

LocationsModel locationsModelFromJson(String str) => LocationsModel.fromJson(json.decode(str));

String locationsModelToJson(LocationsModel data) => json.encode(data.toJson());

class LocationsModel {
    LocationsModel({
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
    final List<LocationsData> data;

    factory LocationsModel.fromJson(Map<String, dynamic> json) => LocationsModel(
        totalRecords: json["totalRecords"],
        succeeded: json["succeeded"],
        message: json["message"],
        error: json["error"],
        data: List<LocationsData>.from(json["data"].map((x) => LocationsData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalRecords": totalRecords,
        "succeeded": succeeded,
        "message": message,
        "error": error,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class LocationsData {
    LocationsData({
        this.id,
        this.name,
        this.type,
        this.measurements,
        this.about,
        this.imageName,
        this.characters,
        this.placeOfBirthCharacters,
    });

    final String id;
    final String name;
    final String type;
    final String measurements;
    final String about;
    final String imageName;
    final List<CharactersData> characters;
    final List<CharactersData> placeOfBirthCharacters;

    factory LocationsData.fromJson(Map<String, dynamic> json) => LocationsData(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        measurements: json["measurements"],
        about: json["about"],
        imageName: json["imageName"],
        characters: List<CharactersData>.from(json["characters"].map((x) => CharactersData.fromJson(x))),
        placeOfBirthCharacters: List<CharactersData>.from(json["placeOfBirthCharacters"].map((x) => CharactersData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "measurements": measurements,
        "about": about,
        "imageName": imageName,
        "characters": List<dynamic>.from(characters.map((x) => x.toJson())),
        "placeOfBirthCharacters": List<dynamic>.from(placeOfBirthCharacters.map((x) => x.toJson())),
    };
}

class CharactersData {
    CharactersData({
        this.id,
        this.firstName,
        this.lastName,
        this.fullName,
        this.status,
        this.about,
        this.gender,
        this.race,
        this.imageName,
        this.locationId,
        this.location,
        this.placeOfBirthId,
        this.placeOfBirth,
        this.episodes,
    });

    final String id;
    final String firstName;
    final String lastName;
    final String fullName;
    final int status;
    final String about;
    final int gender;
    final String race;
    final String imageName;
    final String locationId;
    final dynamic location;
    final String placeOfBirthId;
    final dynamic placeOfBirth;
    final dynamic episodes;

    factory CharactersData.fromJson(Map<String, dynamic> json) => CharactersData(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        fullName: json["fullName"],
        status: json["status"],
        about: json["about"],
        gender: json["gender"],
        race: json["race"],
        imageName: json["imageName"],
        locationId: json["locationId"],
        location: json["location"],
        placeOfBirthId: json["placeOfBirthId"] == null ? null : json["placeOfBirthId"],
        placeOfBirth: json["placeOfBirth"],
        episodes: json["episodes"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName == null ? null : lastName,
        "fullName": fullName,
        "status": status,
        "about": about,
        "gender": gender,
        "race": race,
        "imageName": imageName,
        "locationId": locationId,
        "location": location,
        "placeOfBirthId": placeOfBirthId == null ? null : placeOfBirthId,
        "placeOfBirth": placeOfBirth,
        "episodes": episodes,
    };
}
