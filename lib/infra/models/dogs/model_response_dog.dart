import 'dart:convert';

List<ResponseModelDog> responseModelDogFromJson(String str) =>
    List<ResponseModelDog>.from(
        json.decode(str).map((x) => ResponseModelDog.fromJson(x)));

String responseModelDogToJson(List<ResponseModelDog> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseModelDog {
  ResponseModelDog({
    this.weight,
    this.height,
    this.id,
    this.name,
    this.bredFor,
    this.breedGroup,
    this.lifeSpan,
    this.temperament,
    this.origin,
    this.referenceImageId,
    this.image,
    this.countryCode,
  });

  Eight? weight;
  Eight? height;
  int? id;
  String? name;
  String? bredFor;
  String? breedGroup;
  String? lifeSpan;
  String? temperament;
  String? origin;
  String? referenceImageId;
  Image? image;
  String? countryCode;

  factory ResponseModelDog.fromJson(Map<String, dynamic> json) =>
      ResponseModelDog(
        weight: Eight.fromJson(json["weight"]),
        height: Eight.fromJson(json["height"]),
        id: json["id"] ?? '',
        name: json["name"] ?? '',
        bredFor: json["bred_for"] ?? '',
        breedGroup: json["breed_group"] ?? '',
        lifeSpan: json["life_span"],
        temperament: json["temperament"] ?? '',
        origin: json["origin"],
        referenceImageId: json["reference_image_id"] ?? '',
        image: Image.fromJson(json["image"] ?? ''),
        countryCode: json["country_code"],
      );

  Map<String, dynamic> toJson() => {
        "weight": weight!.toJson(),
        "height": height!.toJson(),
        "id": id,
        "name": name,
        "bred_for": bredFor,
        "breed_group": breedGroup,
        "life_span": lifeSpan,
        "temperament": temperament,
        "origin": origin,
        "reference_image_id": referenceImageId,
        "image": image!.toJson(),
        "country_code": countryCode,
      };
}

class Eight {
  Eight({
    this.imperial,
    this.metric,
  });

  String? imperial;
  String? metric;

  factory Eight.fromJson(Map<String, dynamic> json) => Eight(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}

class Image {
  Image({
    this.id,
    this.width,
    this.height,
    this.url,
  });

  String? id;
  int? width;
  int? height;
  String? url;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
      };
}
