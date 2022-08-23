// To parse this JSON data, do
//
//     final brandTypeResponse = brandTypeResponseFromJson(jsonString);

import 'dart:convert';

BrandTypeResponse brandTypeResponseFromJson(String str) =>
    BrandTypeResponse.fromJson(json.decode(str));

// String brandTypeResponseToJson(BrandTypeResponse data) =>
//     json.encode(data.toJson());

class BrandTypeResponse {
  BrandTypeResponse({
    required this.status,
    required this.modellist,
  });

  String status;
  List<Modellist> modellist;

  factory BrandTypeResponse.fromJson(Map<String, dynamic> json) =>
      BrandTypeResponse(
        status: json["status"],
        modellist: List<Modellist>.from(
            json["modellist"].map((x) => Modellist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "modellist": List<dynamic>.from(modellist.map((x) => x.toJson())),
      };
}

class Modellist {
  Modellist({
    required this.id,
    required this.type,
    required this.brand,
  });

  String id;
  String type;
  String brand;

  factory Modellist.fromJson(Map<String, dynamic> json) => Modellist(
        id: json["_id"],
        type: json["type"],
        brand: json["brand"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "type": type,
        "brand": brand,
      };
}
